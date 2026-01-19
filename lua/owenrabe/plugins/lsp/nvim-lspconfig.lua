return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"saghen/blink.cmp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		-- Get capabilities from blink.cmp
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		-- Setup biome for JavaScript/TypeScript
		vim.lsp.config.biome = {
			capabilities = capabilities,
			filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "json", "jsonc" },
		}
		vim.lsp.enable("biome")

		-- Setup rust_analyzer for Rust
		vim.lsp.config.rust_analyzer = {
			capabilities = capabilities,
			filetypes = { "rust" },
		}
		vim.lsp.enable("rust_analyzer")

		-- Setup clangd for C/C++
		vim.lsp.config.clangd = {
			capabilities = capabilities,
			filetypes = { "c", "cpp", "objc", "objcpp" },
		}
		vim.lsp.enable("clangd")

		-- Setup vimls for Vim
		vim.lsp.config.vimls = {
			capabilities = capabilities,
			filetypes = { "vim" },
		}
		vim.lsp.enable("vimls")

		-- Setup gopls for Go
		vim.lsp.config.gopls = {
			capabilities = capabilities,
			filetypes = { "go", "gomod", "gowork", "gotmpl" },
		}
		vim.lsp.enable("gopls")

		-- Setup sqls for SQL
		vim.lsp.config.sqls = {
			capabilities = capabilities,
			filetypes = { "sql", "mysql" },
		}
		vim.lsp.enable("sqls")

		-- Setup jdtls for Java
		vim.lsp.config.jdtls = {
			capabilities = capabilities,
			filetypes = { "java" },
		}
		vim.lsp.enable("jdtls")

		-- Setup ruff for Python
		vim.lsp.config.ruff = {
			capabilities = capabilities,
			filetypes = { "python" },
		}
		vim.lsp.enable("ruff")

		-- Setup lua_ls with custom settings
		vim.lsp.config.lua_ls = {
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		}
		vim.lsp.enable("lua_ls")

		-- Global mappings.
		-- See `:help vim.diagnostic.*` for documentation on any of the below functions
		vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
		-- vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

		-- Use LspAttach autocommand to only map the following keys
		-- after the language server attaches to the current buffer
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set("n", "<space>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			end,
		})
	end,
}
