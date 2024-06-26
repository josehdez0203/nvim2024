return {
	"rcarriga/nvim-notify",
	keys = {
		{
			"<leader>un",
			function()
				require("notify").dismiss({ silent = true, pending = true })
			end,
			desc = "Dismiss all Notifications",
		},
	},
	config = function()
		local opts = {
			timeout = 2000,
			-- render = "minimal",
			-- stages = "fade",
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.4)
			end,
			on_open = function(win)
				vim.api.nvim_win_set_config(win, { zindex = 100 })
			end,
		}
		require("notify").setup(opts)
		-- when noice is not enabled, install notify on VeryLazy
		-- if not Util.has("noice.nvim") then
		-- 	Util.on_very_lazy(function()
		-- 		vim.notify = require("notify")
		-- 	end)
		-- end
	end,
}
