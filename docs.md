# Documentation

## Commands

> Important commands to remember

| Command                       | Description                           |
| ----------------------------- | ------------------------------------- |
| `:Packer[...]`                | Run Packer commands                   |
| `:Mason`                      | Open the Mason overview               |
| `:LspInfo`                    | Open the LspInfo overview             |
| `:checkhealth nvim`           | Ensure NeoVim is set up correctly     |
| `:checkhealth mason`          | Ensure Mason is set up correctly      |
| `:checkhealth telescope`      | Ensure Telescope is set up correctly  |
| `:checkhealth vim.treesitter` | Ensure Treesitter is set up correctly |

## Keymaps

> Holds an overview of the current mappings that I actively use

### General

| Binding    | References | Description                        |
| ---------- | ---------- | ---------------------------------- |
| `,`        | `<Leader>` | Comma is the leader key            |
| `,<space>` | `noh`      | Clear highlighting                 |
| `j`        | `gj`       | Will move down within wrapped text |
| `h`        | `gh`       | Will move up within wrapped text   |

### Completion

| Binding | References             | Description                                       |
| ------- | ---------------------- | ------------------------------------------------- |
| `<tab>` | `cmp.mapping.confirm`  | Within completion, use ENTER to confirm selection |
| `<CR>`  | `cmp.select_next_item` | Within completion, use TAB to select next item    |

### LSP

| Binding | References                     | Description          |
| ------- | ------------------------------ | -------------------- |
| `gd`    | `vim.lsp.buf.definition()`     | Go to definition     |
| `gr`    | `vim.lsp.buf.references()`     | Go to references     |
| `gh`    | `vim.lsp.buf.hover()`          | See hover info       |
| `gi`    | `vim.lsp.buf.implementation()` | Go to implementation |
| `gs`    | `vim.lsp.buf.signature_help()` | See signature_help   |

### Telescope

| Binding | References                    | Description                 |
| ------- | ----------------------------- | --------------------------- |
| `,f`    | `builtin.find_files`          | Open file search            |
| `,s`    | `builtin.live_grep`           | Open grep search            |
| `,b`    | `builtin.buffers`             | Open buffer search          |
| `,p`    | `builtin.diagnostics`         | Open diagnostics search     |
| `,d`    | `builtin.lsp_definitions`     | Open definition search      |
| `,r`    | `builtin.lsp_references`      | Open references search      |
| `,i`    | `builtin.lsp_implementations` | Open implementations search |

### TREE

| Binding | References               | Description                                               |
| ------- | ------------------------ | --------------------------------------------------------- |
| `,,`    | `NvimTreeFindFileToggle` | Will open the current file in the tree, or close the tree |
| `,m`    | `NvimTreeRefresh`        | Will refresh the tree                                     |

### Formatter/Linter

| Binding | References      | Description               |
| ------- | --------------- | ------------------------- |
| `:w`    | `:Format`       | Attempt to format on save |
| `:w`    | `lini.try_lint` | Attempt to lint on save   |

### Less important (no need to remember, but good to know)

| Binding | References | Description                                |
| ------- | ---------- | ------------------------------------------ |
| `j`     | `gj`       | Will move down within wrapped text         |
| `h`     | `gh`       | Will move up within wrapped text           |
| `W`     | `gh`       | Will move up within wrapped text           |
| `:Wq`   | `:wq`      | Autocorrect command when pressing too fast |
| `:Wqa`  | `:wqa`     | Autocorrect command when pressing too fast |
| `:WQ`   | `:wq`      | Autocorrect command when pressing too fast |
| `:WQa`  | `:wqa`     | Autocorrect command when pressing too fast |
| `:WQA`  | `:wqa`     | Autocorrect command when pressing too fast |
| `:W`    | `:w`       | Autocorrect command when pressing too fast |
| `:Q`    | `:q`       | Autocorrect command when pressing too fast |
