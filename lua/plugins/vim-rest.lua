return {
	"diepm/vim-rest-console",
	ft = "rest",
	config = function()
		-- require("vrc")
		-- vim.g.vrc_body_preprocessor = "jq -c ."]])
		vim.g.vrc_response_default_content_type = "application/json"
		vim.g.vrc_auto_format_response_patterns = {
			json = "jq",
		}
	end,
	keys = {
		{ "tt", ":call VrcQuery()<CR>", desc = "Enviar petición http", silent = true },
	},
}
-- return {
-- 	"lima1909/resty.nvim",
-- 	dependencies = { "nvim-lua/plenary.nvim" },
-- 	config = true,
-- 	keys = {
-- 		{ "tt", ":Resty run<CR>", desc = "Enviar petición actual http", silent = true },
-- 		{ "tl", ":Resty last<CR>", desc = "Enviar petición anterior http", silent = true },
-- 	},
-- }
