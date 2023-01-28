vim.opt.termguicolors = true
local status, bufferline = pcall(require, "bufferline")

if not status then 
	vim.notify("Cannot find bufferline")
end

bufferline.setup{

}
