return {}
--[[	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{ "j-hui/fidget.nvim", opts = {} },
		"saghen/blink.cmp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		local telescope = require("telescope.builtin")
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		local on_attach = function(client, bufnr)
			local function map(mode, lhs, rhs, desc)
				vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = "LSP: " .. desc })
			end

			-- Core navigation / actions
			map("n", "grn", vim.lsp.buf.rename, "Rename")
			map({ "n", "x" }, "gra", vim.lsp.buf.code_action, "Code action")
			map("n", "grd", telescope.lsp_definitions, "Goto definition")
			map("n", "grr", telescope.lsp_references, "Goto references")
			map("n", "gri", telescope.lsp_implementations, "Goto implementation")
			map("n", "grD", vim.lsp.buf.declaration, "Goto declaration")
			map("n", "grt", telescope.lsp_type_definitions, "Goto type definition")
			map("n", "gO", telescope.lsp_document_symbols, "Document symbols")
			map("n", "gW", telescope.lsp_dynamic_workspace_symbols, "Workspace symbols")
		end

		-- Per-language server configuration
		local servers = {
			clangd = {
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
					"--completion-style=detailed",
					"--header-insertion=never",
				},
			},
			pylsp = {},
			lua_ls = {},
		}

		-- Auto-install the servers above via Mason
		mason_tool_installer.setup({
			ensure_installed = vim.tbl_keys(servers),
		})

		-- Hook Mason-installed servers into lspconfig
		require("mason-lspconfig").setup({
			ensure_installed = {},
			automatic_installation = false,
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
					server.on_attach = on_attach
					lspconfig[server_name].setup(server)
				end,
			},
		})
	end,
}--]]
