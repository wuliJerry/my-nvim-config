local packer = require('packer')

return packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	-- My plugins here
	use 'tanvirtin/monokai.nvim'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() 
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end
	}

	use {
		"windwp/nvim-autopairs",
	    config = function() require("nvim-autopairs").setup {} end
	}

	use 'yamatsum/nvim-cursorline'

	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use({
	  	"utilyre/barbecue.nvim",
	  	tag = "*",
	  	requires = {
	  	  	"neovim/nvim-lspconfig",
	  	  	"SmiteshP/nvim-navic",
	  	  	"nvim-tree/nvim-web-devicons", -- optional dependency
	  	},
	  	after = "nvim-web-devicons", -- keep this if you're using NvChad

	  	config = function()
	  	  	require("barbecue").setup()
	  	end,
	})	
end)
