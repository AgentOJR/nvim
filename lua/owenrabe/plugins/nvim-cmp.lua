-- return {
-- 	"hrsh7th/nvim-cmp",
-- 	event = { "InsertEnter" },
-- 	dependencies = {
-- 		"hrsh7th/cmp-nvim-lsp",
-- 		"hrsh7th/cmp-buffer", -- source for text in buffer
-- 		"hrsh7th/cmp-path", -- source for file system paths
-- 		"hrsh7th/cmp-cmdline", -- source for math calculations
--
-- 		"L3MON4D3/LuaSnip", -- snippet engine
-- 		"saadparwaiz1/cmp_luasnip", -- for autocompletion
-- 		"rafamadriz/friendly-snippets", -- useful snippets
-- 	},
-- 	config = function()
-- 		local cmp = require("cmp")
--
-- 		cmp.setup({
-- 			snippet = {
-- 				-- REQUIRED - you must specify a snippet engine
-- 				expand = function(args)
-- 					require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
-- 				end,
-- 			},
-- 			window = {
-- 				-- completion = cmp.config.window.bordered(),
-- 				-- documentation = cmp.config.window.bordered(),
-- 			},
-- 			mapping = cmp.mapping.preset.insert({
-- 				["<C-Space>"] = cmp.mapping.complete(),
-- 				["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
-- 				["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
-- 				["<ESC>"] = cmp.mapping.close(),
-- 				["<CR>"] = cmp.mapping.confirm({ select = true }),
-- 			}),
-- 			sources = cmp.config.sources({
-- 				{ name = "nvim_lsp" },
-- 				{ name = "luasnip" }, -- For luasnip users.
-- 			}, {
-- 				{ name = "buffer" },
-- 			}),
-- 		})
--
-- 		-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
-- 		-- Set configuration for specific filetype.
-- 		--[[ cmp.setup.filetype('gitcommit', {
--     sources = cmp.config.sources({
--       { name = 'git' },
--     }, {
--       { name = 'buffer' },
--     })
--  })
--  require("cmp_git").setup() ]]
-- 		--
--
-- 		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
-- 		cmp.setup.cmdline({ "/", "?" }, {
-- 			mapping = cmp.mapping.preset.cmdline(),
-- 			sources = {
-- 				{ name = "buffer" },
-- 			},
-- 		})
--
-- 		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- 		cmp.setup.cmdline(":", {
-- 			mapping = cmp.mapping.preset.cmdline(),
-- 			sources = cmp.config.sources({
-- 				{ name = "path" },
-- 			}, {
-- 				{ name = "cmdline" },
-- 			}),
-- 			matching = { disallow_symbol_nonprefix_matching = false },
-- 		})
-- 	end,
-- }
return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = "rafamadriz/friendly-snippets",

	-- use a release tag to download pre-built binaries
	version = "*",
	-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
	-- build = 'cargo build --release',
	-- If you use nix, you can build from source using latest nightly rust with:
	-- build = 'nix run .#build-plugin',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- 'default' for mappings similar to built-in completion
		-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
		-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
		-- See the full "keymap" documentation for information on defining your own keymap.
		keymap = { preset = "default" },

		appearance = {
			-- Sets the fallback highlight groups to nvim-cmp's highlight groups
			-- Useful for when your theme doesn't support blink.cmp
			-- Will be removed in a future release
			use_nvim_cmp_as_default = true,
			-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = "mono",
		},

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
	opts_extend = { "sources.default" },
}
