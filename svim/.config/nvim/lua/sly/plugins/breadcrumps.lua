return {
	"LunarVim/breadcrumbs.nvim",
	dependencies = {
		"SmiteshP/nvim-navic",
		opts = {
			icons = {
				File = "󰈙 ",
				Module = " ",
				Namespace = "󰌗 ",
				Package = " ",
				Class = "󰌗 ",
				Method = "󰆧 ",
				Property = " ",
				Field = "󰔇 ",
				Constructor = "󰜐 ",
				Enum = "󰕘 ",
				Interface = "󰕘 ",
				Function = " ",
				Variable = "󰆧 ",
				Constant = "󰏿 ",
				String = " ",
				Number = "󱜩 ",
				Boolean = "󰆖 ",
				Array = "󰅪 ",
				Object = "󰅩 ",
				Key = "󰌆 ",
				Null = " ",
				EnumMember = " ",
				Struct = "󰌗 ",
				Event = " ",
				Operator = "󰆕 ",
				TypeParameter = "󰬁 ",
			},
			lsp = {
				auto_attach = true,
			},
			highlight = true,
			separator = " | ",
			depth_limit = 3,
			depth_limit_indicator = " ",
			safe_output = true,
			lazy_update_context = false,
			click = false,
			format_text = function(text)
				return text
			end,
		},
	},
	config = function()
		require("breadcrumbs").setup()
	end,
}
