return require("packer").startup(function(use)
	-- Packer can manage itself as an optional plugin
	use({ "wbthomason/packer.nvim", opt = true })

	-- Manson manager
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	})

	-- Configure Linters
	use({ "mfussenegger/nvim-lint" })

	-- Configure Formatters
	use({ "mhartington/formatter.nvim" })

	-- General
	use({ "nvim-lua/popup.nvim", "nvim-lua/plenary.nvim" })

	-- Colorscheme
	use({ "catppuccin/nvim", as = "catppuccin" })

	-----------------------------------------------------------------------------
	---------------------------Telescope section---------------------------------
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" }, -- required dependency
			{ "nvim-lua/popup.nvim" },
		},
	})
	-- Add a native telescope sorter to significantly improve sorting performance.
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- this requires gcc or clang and make

	use({
		"nvim-telescope/telescope-frecency.nvim",
		requires = { "tami5/sql.nvim" },
		config = function()
			require("telescope").load_extension("frecency")
		end,
	})
	use({ "nvim-telescope/telescope-symbols.nvim" })
	use({
		"LukasPietzschmann/telescope-tabs",
		requires = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telescope-tabs").setup({
				-- Your custom config :^)
			})
		end,
	})

	-- Project configuration
	use({ "ahmedkhalf/project.nvim" })

	-- LSP and completion
	use({ "neovim/nvim-lspconfig" })
	use({ "onsails/lspkind-nvim" })
	use({ "ray-x/lsp_signature.nvim" })
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/vim-vsnip",
		},
	})

	-- Lua development
	use({ "tjdevries/nlua.nvim" })

	-- Vim dispatch
	use({ "tpope/vim-dispatch" })

	-- Fugitive for Git
	use({ "tpope/vim-fugitive" })
	use({ "rhysd/git-messenger.vim" })

	-- Navigation
	use({
		"numToStr/Navigator.nvim",
		config = function()
			require("Navigator").setup()
		end,
	})

	-- Icons
	use({ "ryanoasis/vim-devicons" })
	use({ "kyazdani42/nvim-web-devicons" })

	-- Comment out stuff
	use({ "tomtom/tcomment_vim" })

	-- GitSigns
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- Nvim-tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		tag = "nightly", -- optional, updated every week
	})

	-- Pairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- Statusbar
	use({ "hoob3rt/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	-- Tresitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- Startsceen
	use({ "mhinz/vim-startify" })

	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})
end)
