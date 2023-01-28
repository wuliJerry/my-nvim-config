local status, barbecue_ui = pcall("require", "barbecue")

if not status then
	vim.notify("Cannot find barbecue")
	return
end

-- shows barbecue globally
barbecue_ui.toggle(true)
-- update the current window's winbar
barbecue_ui.update()
-- just like before but on the given window
barbecue_ui.navigate(index, winnr)
-- triggers CursorHold event faster
vim.opt.updatetime = 200

barbecue_ui.setup({
  	create_autocmd = false, -- prevent barbecue from updating itself automatically
	theme = {
	    -- this highlight is used to override other highlights
	    -- you can take advantage of its `bg` and set a background throughout your winbar
	    -- (e.g. basename will look like this: { fg = "#c0caf5", bold = true })
	    normal = { fg = "#c0caf5" },
	
	    -- these highlights correspond to symbols table from config
	    ellipsis = { fg = "#737aa2" },
	    separator = { fg = "#737aa2" },
	    modified = { fg = "#737aa2" },
	
	    -- these highlights represent the _text_ of three main parts of barbecue
	    dirname = { fg = "#737aa2" },
	    basename = { bold = true },
	    context = {},
	
	    -- these highlights are used for context/navic icons
	    context_file = { fg = "#ac8fe4" },
	    context_module = { fg = "#ac8fe4" },
	    context_namespace = { fg = "#ac8fe4" },
	    context_package = { fg = "#ac8fe4" },
	    context_class = { fg = "#ac8fe4" },
	    context_method = { fg = "#ac8fe4" },
	    context_property = { fg = "#ac8fe4" },
	    context_field = { fg = "#ac8fe4" },
	    context_constructor = { fg = "#ac8fe4" },
	    context_enum = { fg = "#ac8fe4" },
	    context_interface = { fg = "#ac8fe4" },
	    context_function = { fg = "#ac8fe4" },
	    context_variable = { fg = "#ac8fe4" },
	    context_constant = { fg = "#ac8fe4" },
	    context_string = { fg = "#ac8fe4" },
	    context_number = { fg = "#ac8fe4" },
	    context_boolean = { fg = "#ac8fe4" },
	    context_array = { fg = "#ac8fe4" },
	    context_object = { fg = "#ac8fe4" },
	    context_key = { fg = "#ac8fe4" },
	    context_null = { fg = "#ac8fe4" },
	    context_enum_member = { fg = "#ac8fe4" },
	    context_struct = { fg = "#ac8fe4" },
	    context_event = { fg = "#ac8fe4" },
	    context_operator = { fg = "#ac8fe4" },
	    context_type_parameter = { fg = "#ac8fe4" },
	},
})

vim.api.nvim_create_autocmd({
	"WinScrolled",
	"BufWinEnter",
	"CursorHold",
	"InsertLeave",
	
	-- include these if you have set `show_modified` to `true`
	"BufWritePost",
	"TextChanged",
	"TextChangedI",
}, {
  	group = vim.api.nvim_create_augroup("barbecue.updater", {}),
  	callback = function()
    	barbecue_ui.update()
  	end,
})
