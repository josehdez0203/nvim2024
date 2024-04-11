return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	after = "catppuccin",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	-- opts = {
	-- 	options = {
	-- 		--mode = "tabs",
	-- 		separator_style = "slant",
	-- 		always_show_bufferline = true,
	-- 	},
	-- },
	config = function()
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		require("bufferline").setup({
			highlights = require("catppuccin.groups.integrations.bufferline").get({
				mode = "tabs",
				separator_style = "slant",
				always_show_bufferline = true,
				styles = { "italic", "bold" },
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
