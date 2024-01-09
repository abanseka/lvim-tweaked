-- plugins requiring little to no configuration
return {
	"christoomey/vim-tmux-navigator",
	{ "sindrets/diffview.nvim", event = "BufRead" },
	{
		"ggandor/leap.nvim",
		lazy = false,
		config = function()
			require("leap").add_default_mappings()
		end,
	},
	{
		"rest-nvim/rest.nvim",
		lazy = false,
		config = function()
			require("rest-nvim").setup({
				result_split_horizontal = true,
			})
		end,
	},
	{
		"NvChad/nvim-colorizer.lua",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
	{
		"jiaoshijie/undotree",
		config = true,
		keys = {
			{ "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
		},
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			signs = false,
		},
	},
	{
		"chrishrb/gx.nvim",
		event = { "BufEnter" },
		config = function()
			require("gx").setup()
		end,
	},
}
