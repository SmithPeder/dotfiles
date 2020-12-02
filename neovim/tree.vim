let g:lua_tree_side = "left"
let g:lua_tree_width = 35
let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:lua_tree_auto_close = 1
let g:lua_tree_quit_on_open = 0
let g:lua_tree_follow = 1
let g:lua_tree_indent_markers = 1
let g:lua_tree_hide_dotfiles = 0
let g:lua_tree_git_hl = 1
let g:lua_tree_root_folder_modifier = ':~'
let g:lua_tree_tab_open = 1
let g:lua_tree_allow_resize = 1
let g:lua_tree_bindings = {
    \ 'create':          'a',
    \ 'remove':          'd',
    \ 'rename':          'r',
    \ 'copy':            'c',
    \ 'paste':           'p',
    \ 'cut':             'x',
    \ 'preview':         '<Tab>',
    \ 'edit':            ['<CR>', 'o'],
    \ 'edit_vsplit':     '<C-v>',
    \ 'edit_split':      '<C-x>',
    \ 'edit_tab':        '<C-t>',
    \ 'refresh':         'R',
    \ }
let g:lua_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': ""
    \   }
    \ }

nnoremap <leader>, :LuaTreeToggle<CR>
set termguicolors
