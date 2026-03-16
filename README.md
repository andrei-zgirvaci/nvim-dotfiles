# Neovim

![](https://i.imgur.com/TUYkwAb.jpeg)

## Vim keybindings

### Focus

`%` : Jump to matching `()`, `[]`, `{}`

`]d` : Go to next diagnostic

`[d` : Go to previous diagnostic

`^` : Move to first non-blank character

`0` | `_` : Move to beginning of line

`<C-o>` : Temporarily switch to Normal mode while in Insert mode

`:reg` : Show registers (clipboard/register history)

`<C-r> "` : Paste from register in Insert mode

`?` : Search backward

`U` : Undo all changes on current line

### Good to know

`:%s/old/new/g` : Replace in whole file

`:%s/old/new/gc` : Replace in whole file with confirmation

`:#,#s/old/new/g` : Replace in line range (`#,#`)

`gv` : Re-select previous visual selection

`<C-g>` : Show cursor/file status

`:!<command>` : Run external shell command

`:r <filename>` : Insert file contents below cursor

`:r !<command>` : Insert command output below cursor

`v` + `:'<,'>w <filename>` : Save selected lines to file

### Using

`/` : Search forward

`n` : Repeat search (same direction)

`N` : Repeat search (opposite direction)

`r<char>` : Replace one character

`R` : Replace mode (multiple characters)

`<C-^>` : Switch to alternate file

`<C-o>` : Jump backward in jumplist

`<C-i>` : Jump forward in jumplist

`<C-v>` : Visual block mode (column select/edit)

`{number}G` : Go to line number

## Custom keybindings

### Focus

`z` : Flash jump

`Z` : Flash Treesitter jump

`gx` : Exchange text regions (`mini.operators`)

`<leader>/` : Fuzzy find in current buffer

`<leader>fc` : Git buffer commits

`<leader>fb` : Open buffers list

`<leader>gx` : Open URL/path under cursor

`<leader>vi` : LSP implementations

`<leader>vt` : LSP type definitions

`<leader>ds` : Document symbols

`<leader>ws` : Workspace symbols

`]f` / `[f` : Next/previous function start (Treesitter textobjects)

`]F` / `[F` : Next/previous function inner start

`]a` / `[a` : Next/previous parameter start

`]b` / `[b` : Next/previous block outer start

`]B` / `[B` : Next/previous block inner start

`<leader>sa` / `<leader>sA` : Swap parameter next/previous

`<leader>sf` / `<leader>sF` : Swap function next/previous

`aF` / `iF` : Around/inside function (`mini.ai` custom Treesitter textobject)

### Good to know

`<C-e>p` : Harpoon previous

`<C-e>n` : Harpoon next

`<leader>=` : Reindent whole file and return cursor

`<leader>r` : Search/replace word under cursor in whole file (confirm each)

`<leader>gl` : Gitsigns preview hunk

`<leader>gd` : Gitsigns diff current file

`<leader>gb` : Gitsigns full line blame

`<leader>gB` : Toggle current-line blame

`gm` : Multiply text (`mini.operators`)

`<C-h>` : Move to left split

`<C-l>` : Move to right split

`<C-j>` : Move to split below

`<C-k>` : Move to split above

`<C-S-H>` : Shrink window width

`<C-S-L>` : Grow window width

`<C-S-J>` : Grow window height

`<C-S-K>` : Shrink window height

`<leader>fh` : Help tags

# Improvements

- [ ] Show a list of git changes files
- [ ] On git diff, focus on the previous commit window, to be able to close it easier
