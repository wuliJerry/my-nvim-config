if vim.g.neovide then

	print("hello world")
	vim.opt.guifont = {"FiraCode Nerd Font Mono", "h10"}
	vim.g.neovide_scale_factor = 1.0

	vim.g.neovide_floating_blur_amount_x = 2.0
	vim.g.neovide_floating_blur_amount_y = 2.0
	
	
	-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
	vim.g.neovide_transparency = 0.9
	vim.g.transparency = 0.8

	vim.g.neovide_cursor_animation_length = 0.13
	

end
