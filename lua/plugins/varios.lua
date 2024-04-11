return {
	{ "nvim-lua/plenary.nvim" }, -- lua functions that many plugins use

	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<F4>", "<cmd>UndotreeToggle<cr>", { desc = "undotree" })
		end,
	},
	-- "christoomey/vim-tmux-navigator", -- tmux & split window navigation

	-- "inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)
	-- {
	--   "folke/flash.nvim",
	--   event = "VeryLazy",
	--   ---@diagnostic disable-next-line: undefined-doc-name
	--   ---@type Flash.Config
	--   opts = {},
	-- -- stylua: ignore
	--   keys = {
	--     { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash search" },
	--     { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash search"  },
	--   },
	-- },
	{
		"voldikss/vim-floaterm",
		lazy = false,
		config = function()
			vim.keymap.set("n", "<F12>", ":FloatermToggle<CR>", { desc = "FloatermToggle" })
			vim.keymap.set("t", "<F12>", "<C-\\><C-n>:FloatermToggle<CR>", { desc = "FloatermToggle" })
		end,
	},
	{
		"folke/zen-mode.nvim",
		lazy = false,
		dependencies = { "folke/twilight.nvim" },
		config = function()
			vim.keymap.set("n", "<leader>zz", ":ZenMode<CR>", { desc = "ZenMode" }) -- ZenMode
			vim.keymap.set("n", "<leader>zt", ":Twilight<CR>", { desc = "Twilight" }) --Twilight
		end,
	},
	{
		"RRethy/vim-illuminate",
	},
	{
		"echasnovski/mini.nvim",
		version = "*",
		init = function()
			require("mini.animate").setup()
		end,
	},
	{
		"gen740/SmoothCursor.nvim",
		init = function()
			require("smoothcursor").setup({
				type = "exp",
				fancy = { enable = true },
				cursor = "󰁕",
			})
			local autocmd = vim.api.nvim_create_autocmd

			autocmd({ "ModeChanged" }, {
				callback = function()
					local current_mode = vim.fn.mode()
					if current_mode == "n" then
						vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#8aa872" })
						vim.fn.sign_define("smoothcursor", { text = "󰁕" })
					elseif current_mode == "v" then
						vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
						vim.fn.sign_define("smoothcursor", { text = "" })
					elseif current_mode == "V" then
						vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
						vim.fn.sign_define("smoothcursor", { text = "" })
					elseif current_mode == "�" then
						vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#bf616a" })
						vim.fn.sign_define("smoothcursor", { text = "" })
					elseif current_mode == "i" then
						vim.api.nvim_set_hl(0, "SmoothCursor", { fg = "#668aab" })
						vim.fn.sign_define("smoothcursor", { text = "" })
					end
				end,
			})
		end,
	},
}
