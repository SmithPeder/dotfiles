require"bufferline".setup {
    options = {
        view = "multiwindow",
        numbers = "ordinal",
        number_style = { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
        mappings = true, -- maps LEADER 1-9 to bufferline picks
        buffer_close_icon= "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is deduplicated
        tab_size = 18,
        diagnostics = "nvim_lsp", -- enable native lsp diagnostics
        diagnostics_indicator = function(count, level, _)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = false,
        -- separator_style = "thick",
        separator_style = { "|", "|" },
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
      },
    highlights = {
      fill = {
        guifg = '#fefefe',
        guibg = '#151515'
      },
      background = {
        guifg = '#fefefe',
        guibg = '#151515'
      }
    }
  }
