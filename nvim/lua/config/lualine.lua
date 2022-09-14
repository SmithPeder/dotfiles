-- Define config object
local config = {
  options = {
    theme = "catppuccin"
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch"},
    lualine_c = {"filename"},
    lualine_x = {"filetype"},
    lualine_y = {"progress"},
    lualine_z = {"location"},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {'nvim-tree'},
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  }
}

local colors = {
  blue      = '#61afef',
  blue_2    = '#294963',
  green     = '#98c379',
  green_2   = '#495c3b',
  purple    = '#c678dd',
  purple_2  = '#52325c',
  red       = '#e06c75',
  red_2     = '#be5046',
  yellow    = '#e5c07b',
  fg        = '#eeeeee',
  bg        = '#15171c',
  gray1     = '#313131',
  gray2     = '#414141',
  gray3     = '#515151',
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
    table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
    table.insert(config.sections.lualine_x, component)
end

local conditions = {
    buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
    end,
    hide_in_width = function()
        return vim.fn.winwidth(0) > 80
    end,
    check_git_workspace = function()
        local filepath = vim.fn.expand("%:p:h")
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
    end
}

ins_left {
    "diff",
    symbols = {added = " ", modified = " ", removed = " "},
    color_added = colors.green,
    color_modified = colors.yellow,
    color_removed = colors.red,
    condition = conditions.hide_in_width,
    color = { gui = "bold"}
}

ins_left {
    "diagnostics",
    sources = {"nvim_lsp"},
    symbols = {error = " ", warn = " ", info = " "},
    color_error = colors.red,
    color_warn = colors.yellow,
    color_info = colors.cyan,
    color = { gui = "bold"}
}

ins_right {
    -- Lsp server
    function()
        local msg = "No Lsp"
        local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
            return msg
        end
        for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
            end
        end
        return msg
    end,
    color = {fg = colors.purple, gui = "bold"}
}

require("lualine").setup(config)
