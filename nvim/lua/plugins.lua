return require("packer").startup(
    function(use)
        -- Packer can manage itself as an optional plugin
        use {"wbthomason/packer.nvim", opt = true}

        -- General
        use {"nvim-lua/popup.nvim", "nvim-lua/plenary.nvim"}

        -- Colorscheme
        -- use { "themercorp/themer.lua" }
        use { "catppuccin/nvim", as = "catppuccin" }

        -- Fuzzy finder
        use {"nvim-telescope/telescope.nvim",
          requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
        }
        use {"nvim-telescope/telescope-frecency.nvim",
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
        use {
          "hrsh7th/nvim-cmp",
          requires = {
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/vim-vsnip"
          }
        }

        -- Lua development
        use {"tjdevries/nlua.nvim"}

        -- Vim dispatch
        use {"tpope/vim-dispatch"}

        -- Fugitive for Git
        use {"tpope/vim-fugitive"}
        use {"rhysd/git-messenger.vim"}

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
        use {"lewis6991/gitsigns.nvim",
            requires = {
                "nvim-lua/plenary.nvim"
            },
            config = function()
                require("gitsigns").setup()
            end
        }

        -- Tree
        use {
          'kyazdani42/nvim-tree.lua',
          requires = 'kyazdani42/nvim-web-devicons',
          config = function() require'nvim-tree'.setup {} end
        }

        -- Pairs
        use {
          "windwp/nvim-autopairs",
          config = function() require("nvim-autopairs").setup {} end
        }

        -- ALE
        use {"dense-analysis/ale"}

        -- Statusbar
        use {"hoob3rt/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true}}
        use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}


        -- Tresitter
        use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

        -- Startsceen
        use {"mhinz/vim-startify"}

        -- Make sure the vim navigation is rooted in the .git
        use {"airblade/vim-rooter"}

        -- Debugging
        use {
          "mfussenegger/nvim-dap",
          opt = true,
          event = "BufReadPre",
          module = { "dap" },
          wants = { "nvim-dap-virtual-text", "DAPInstall.nvim", "nvim-dap-ui", "nvim-dap-python", "which-key.nvim" },
          requires = {
            "Pocco81/DAPInstall.nvim", -- Install debuggers
            "mfussenegger/nvim-dap-python", -- Language exension for python
            "theHamsta/nvim-dap-virtual-text", -- UI/UX
            "rcarriga/nvim-dap-ui", -- UI/UX
            "nvim-telescope/telescope-dap.nvim", -- UI/UX
          },
          config = function()
            require("config.dap").setup()
          end,
        }

        use {
          "folke/which-key.nvim",
          config = function()
            require("which-key").setup {}
          end
        }

        use { "folke/trouble.nvim",
          requires = "kyazdani42/nvim-web-devicons",
          config = function()
            require("trouble").setup {}
          end
        }

        use {
          'LukasPietzschmann/telescope-tabs',
          requires = { 'nvim-telescope/telescope.nvim' },
          config = function()
            require'telescope-tabs'.setup{
              -- Your custom config :^)
            }
          end
        }


    end
)
