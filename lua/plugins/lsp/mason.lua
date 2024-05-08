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
				ensure_installed = {
					"tsserver",
					"html",
					"cssls",
					"tailwindcss",
					"lua_ls",
					"prismals",
					"pyright",
					"clangd",
					"rust-analyzer",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig["html"].setup({
				capabilities = capabilities,
			})

			lspconfig["tsserver"].setup({
				capabilities = capabilities,
			})

			lspconfig["cssls"].setup({
				capabilities = capabilities,
			})

			lspconfig["tailwindcss"].setup({
				capabilities = capabilities,
			})

			lspconfig["prismals"].setup({
				capabilities = capabilities,
			})

			lspconfig["pyright"].setup({
				capabilities = capabilities,
			})

			lspconfig["clangd"].setup({
				capabilities = capabilities,
			})

			lspconfig["rust-analyzer"].setup({
				capabilities = capabilities,
				filetypes = { "rust" },
				root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json"),
				settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},
					},
				},
			})

			lspconfig["lua_ls"].setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						-- make the language server recognize "vim" global
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
		end,
	},
}
