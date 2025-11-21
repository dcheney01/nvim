return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
      formatters_by_ft = {
        python = { "black" },
        c = { "clang_format" },
        cpp = { "clang_format" },
      },
      formatters = {
        black = {
          prepend_args = { "--line-length", "80" },
        },
        clang_format = {
          prepend_args = function(ctx)
            local cwd = ctx.cwd or vim.fn.getcwd()
            local has_file = vim.loop.fs_stat(cwd .. "/.clang-format") or vim.loop.fs_stat(cwd .. "/_clang-format")
            if has_file then
              return { "--style", "file", "--assume-filename", ctx.filename }
            else
              return { "--style", "{BasedOnStyle: LLVM, ColumnLimit: 80}", "--assume-filename", ctx.filename }
            end
          end,
        },
      },
    })

    -- format on save via autocmd
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.py", "*.c", "*.cpp", "*.h", "*.hpp" },
      callback = function()
        require("conform").format({ async = false, lsp_fallback = true, timeout_ms = 500 })
      end,
    })
  end,
}
