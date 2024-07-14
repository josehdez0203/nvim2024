return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	after = "catppuccin",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	-- opts = {
	-- },
	config = function()
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		-- local groups = require("bufferline.groups")
		require("bufferline").setup({
			options = {
				-- mode = "tabs",
				separator_style = "slant",
				always_show_bufferline = true,
				styles = { "italic", "bold" },
				-- groups = {
				-- 	options = {
				-- 		toggle_hidden_on_enter = true, -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
				-- 	},
				--
				-- 	items = {
				-- 		groups.builtin.ungrouped,
				-- 		{
				-- 			name = "Flutter",
				-- 			highlight = { undercurl = true, sp = "green" },
				-- 			auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
				-- 			matcher = function(buf)
				-- 				return buf.filename:match("%__FLUTTER_DEV_LOG%")
				-- 			end,
				-- 			separator = { -- Optional
				-- 				style = groups.separator.tab,
				-- 			},
				-- 		},
				-- 	},
				-- }
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
				-- 	local s = " "
				-- 	for e, n in pairs(diagnostics_dict) do
				-- 		local sym = e == "error" and " " or (e == "warning" and " " or "")
				-- 		s = s .. n .. sym
				-- 	end
				-- 	return s
				-- end,
			},
			highlights = require("catppuccin.groups.integrations.bufferline").get({
				-- mode = "tabs",
				separator_style = "slant",
				always_show_bufferline = true,
				custom = {
					all = {
						fill = { bg = "#000000" },
					},
					mocha = {
						background = { fg = mocha.text },
					},
					latte = {
						background = { fg = "#000000" },
					},
				},
			}),
		})
	end,
	keys = {
		{ "<tab>", "<cmd>BufferLineCycleNext<CR>", desc = "Move right" },
		{ "<s-tab>", "<cmd>BufferLineCyclePrev<CR>", desc = "Move left" },
	},
}
