return
{{
    "mason-org/mason.nvim",
    opts = {}
    },

    {
    "mason-org/mason-lspconfig.nvim",
    opts = {
     ensure_installed = {
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
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
		vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
		vim.diagnostic.config({
			virtual_text = true,
		})
	end
}
}
