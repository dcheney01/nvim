return	{
  'nvim-treesitter/nvim-treesitter', 
  build = ':TSUpdate',
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "cpp", "python", "markdown", "bash", "c", "cmake", "csv", "dockerfile", "json", "vim", "xml", "yaml"},
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
