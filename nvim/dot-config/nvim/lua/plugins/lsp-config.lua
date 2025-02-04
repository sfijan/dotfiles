return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "basedpyright", "gopls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
        lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
            })
            lspconfig.basedpyright.setup({
                capabilities = capabilities,
                settings = {
                    basedpyright = {
                        -- Using Ruff's import organizer
                        disableOrganizeImports = true,
                    },
                    python = {
                        analysis = {
                            -- Ignore all files for analysis to exclusively use Ruff for linting
                            ignore = { '*' },
                        },
                    },
                },

			})
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })
            lspconfig.ruff.setup({
                capabilities = capabilities,
            })
			vim.keymap.set("n", "<leader>i", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
