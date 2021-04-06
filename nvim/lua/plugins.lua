return require("packer").startup(
    function()
        -- Packer can manage itself as an optional plugin
        use {"wbthomason/packer.nvim", opt = true}

        --
        use {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim"
        }

        -- Color scheme
        use {
            "joshdick/onedark.vim"
        }

        -- Fuzzy finder
        use {
            "nvim-telescope/telescope.nvim",
            requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
        }
        use {
            "nvim-telescope/telescope-frecency.nvim",
            requires = {"tami5/sql.nvim"},
            config = function()
                require("telescope").load_extension("frecency")
            end
        }
        use {"nvim-telescope/telescope-symbols.nvim"}

        -- LSP and completion
        use {"neovim/nvim-lspconfig"}
        use {"onsails/lspkind-nvim"}
        use {"ray-x/lsp_signature.nvim"}
        use {"hrsh7th/nvim-compe"}

        -- Lua development
        use {"tjdevries/nlua.nvim"}

        -- Vim dispatch
        use {"tpope/vim-dispatch"}

        -- Fugitive for Git
        use {"tpope/vim-fugitive"}

        -- Navigation
        use {
            "numToStr/Navigator.nvim",
            config = function()
                require("Navigator").setup()
            end
        }

        -- Icons
        use {"ryanoasis/vim-devicons"}
        use {"kyazdani42/nvim-web-devicons"}

        -- Comment out stuff
        use {"tomtom/tcomment_vim"}

        -- GitSigns
        use {
            "lewis6991/gitsigns.nvim",
            requires = {
                "nvim-lua/plenary.nvim"
            },
            config = function()
                require("gitsigns").setup()
            end
        }

        -- Tree
        use {"kyazdani42/nvim-tree.lua"}

        -- Pairs
        use {"jiangmiao/auto-pairs"}

        -- ALE
        use {"dense-analysis/ale"}
    end
)
