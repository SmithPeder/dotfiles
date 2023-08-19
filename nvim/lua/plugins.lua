local plugins = {

	-- https://github.com/williamboman/mason.nvim
	{ "williamboman/mason.nvim", dependencies = { "williamboman/mason-lspconfig.nvim" } },

	-- https://github.com/mfussenegger/nvim-lint
	{ "mfussenegger/nvim-lint" },

	-- https://github.com/mhartington/formatter.nvim
	{ "mhartington/formatter.nvim" },

	-- https://github.com/nvim-lua/popup.nvim
	{ "nvim-lua/popup.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

	-- https://github.com/neovim/nvim-lspconfig
	{ "neovim/nvim-lspconfig" },

	-- https://github.com/onsails/lspkind.nvim
	{ "onsails/lspkind-nvim", dependencies = { "hrsh7th/nvim-cmp" } },

	-- https://github.com/hrsh7th/nvim-cmp
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-cmdline", -- https://github.com/hrsh7th/cmp-cmdline
			"hrsh7th/cmp-path", -- https://github.com/hrsh7th/cmp-path
			"hrsh7th/cmp-buffer", -- https://github.com/hrsh7th/cmp-buffer
			"hrsh7th/cmp-nvim-lsp", -- https://github.com/hrsh7th/cmp-nvim-lsp
			"hrsh7th/cmp-vsnip", -- https://github.com/hrsh7th/cmp-vsnip
			"hrsh7th/vim-vsnip", -- https://github.com/hrsh7th/vim-vsnip
			"petertriho/cmp-git", -- https://github.com/petertriho/cmp-git
		},
	},

	-- https://github.com/ray-x/lsp_signature.nvim
	-- { "ray-x/lsp_signature.nvim" },

	-- https://github.com/catppuccin/nvim
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	-- https://github.com/nvim-telescope/telescope.nvim
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
			"nvim-telescope/telescope-symbols.nvim",
			{ "nvim-telescope/telescope-frecency.nvim", dependencies = { "tami5/sql.nvim" } },
		},
	},

	-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
		dependencies = { "nvim-telescope/telescope.nvim" },
	},

	-- https://github.com/LukasPietzschmann/telescope-tabs
	{ "LukasPietzschmann/telescope-tabs", dependencies = { "nvim-telescope/telescope.nvim" } },

	-- https://github.com/tpope/vim-fugitive
	{ "tpope/vim-fugitive" },

	-- https://github.com/ryanoasis/vim-devicons
	{ "ryanoasis/vim-devicons" },

	-- https://github.com/nvim-tree/nvim-web-devicons
	{ "nvim-tree/nvim-web-devicons" },

	-- https://github.com/tomtom/tcomment_vim
	{ "tomtom/tcomment_vim" },

	-- https://github.com/lewis6991/gitsigns.nvim
	{ "lewis6991/gitsigns.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

	-- https://github.com/nvim-tree/nvim-tree.lua
	{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- https://github.com/windwp/nvim-autopairs
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },

	-- https://github.com/nvim-lualine/lualine.nvim
	{ "hoob3rt/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- https://github.com/akinsho/bufferline.nvim
	{ "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- https://github.com/nvim-treesitter/nvim-treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	-- https://github.com/mhinz/vim-startify
	{ "mhinz/vim-startify" },
}
local opts = {}

require("lazy").setup(plugins, opts)
