return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"clangd",
				"lua_ls",
				"rust_analyzer",
				"html",
				"ts_ls",
				"cssls",
				"tailwindcss",
				"pyright",
				"eslint",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

			vim.lsp.config("rust_analyzer", { capabilities = capabilities })
			vim.lsp.config("clangd", { capabilities = capabilities })
			vim.lsp.config("lua_ls", { capabilities = capabilities })
			vim.lsp.config("html", { capabilities = capabilities })
			vim.lsp.config("ts_ls", { capabilities = capabilities })
			vim.lsp.config("cssls", { capabilities = capabilities })
			vim.lsp.config("tailwindcss", { capabilities = capabilities })
			vim.lsp.config("pyright", { capabilities = capabilities })
			vim.lsp.config("eslint", { capabilities = capabilities })

			vim.lsp.enable({
				"clangd",
				"rust_analyzer",
				"lua_ls",
				"html",
				"ts_ls",
				"cssls",
				"tailwindcss",
				"pyright",
				"eslint",
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.diagnostic.config({
				virtual_text = true,
			})
		end,
	},
}
