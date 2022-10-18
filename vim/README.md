# vim

Katas sourced from from Vim-Katas

### Keybindings to keep in mind

### Movement

| Command         | Action                                                              |
| --------------- | ------------------------------------------------------------------- |
| `^`             | Move to first non-blank character in line.                          |
| `f a`           | Move forward to next instance of the 'a' character                  |
| `F a`           | Move backward to previous instance of the 'a' character             |
| `;`             | Repeat previous `forward` command.                                  |
| `f space`       | Move to next whitespace                                             |
| `H M L`         | Move to the top/middle/bottom of the screen (i.e. High/Middle/Low). |
| `''`            | Jump back to previous position                                      |
| `ctrl+o ctrl+i` | Jump back / forward through previous positions                      |
| `ctrl-y`        | Move screen up a line                                               |
| `ctrl-e`        | Move screen down a line                                             |
| `ctrl-u`        | Move screen up half a page                                          |
| `ctrl-d`        | Move screen down half a page                                        |
| `ctrl-b`        | Move screen up one page and cursor to last line                     |
| `ctrl-f`        | Move screen down one page and cursor to last line                   |

### Edit

| Command   | Action                                             |
| --------- | -------------------------------------------------- |
| `dw`      | delete to the next word                            |
| `dt,`     | delete up until the next comma on the current line |
| `de`      | delete to the end of the current word              |
| `d2e`     | delete to the end of next word                     |
| `dj`      | delete down a line (current and one below)         |
| `dt)`     | delete up until next closing parenthesis           |
| `d/rails` | delete up until the first search match for “rails” |

### Easy Motion

| Command    | Action       |
| ---------- | ------------ |
| `leader-w` | jump to word |

### Misc

| command                                     | list                                                    |
| ------------------------------------------- | ------------------------------------------------------- |
| `:!mkdir -p %:h`                            | when not exists, create directory for file              |
| `gv`                                        | redo last visual mode selection                         |
| `k`                                         | help for item under cursor                              |
| `.`                                         | repeat last command                                     |
| `> <`                                       | indent / un-indent block                                |
| `*`                                         | search for word under cursor                            |
| `ctrl+x`                                    | select value from `ctrl+x ctrl+o` for word under cursor |
| `:set syntax=go`                            | set file syntax                                         |
| `:set filetype=go`                          | set file type .                                         |
| `:'<,'>:s/=.//gc`                           | delete everything after = character                     |
| `:%!python -m json.tool`                    | format json                                             |
| `:verbose set conceallevel? concealcursor?` | determine what modified a setting                       |

### Working with registers

| Command   | Action                           |
| --------- | -------------------------------- |
| `"{a-z}y` | Yank to register                 |
| `"{A-Z}y` | Append yank to register          |
| `"{a-z}p` | Paste from register              |
| `:reg`    | Show contents of named registers |

### Macros

| Command                | Action                          |
| ---------------------- | ------------------------------- |
| `q<letter><commands>q` | Start recording macro           |
| `<number>@<letter>`    | Execute macro n number of times |
| `@@`                   | Repeat last macro               |

### Movement with Tags

| Command    | Action              |
| ---------- | ------------------- |
| `ctrl - [` | Jump to definition. |
| `ctrl - T` | Jump back.          |

### Marks

| Command   | Action                          |
| --------- | ------------------------------- |
| `m {a-z}` | Marks current position as {a-z} |
| `' {a-z}` | Move to position as {a-z}       |

### Syntax

| Command             | Action                      |
| ------------------- | --------------------------- |
| `:setlocal syntax?` | get syntax for current file |

### Buffers

| Command    | Action                            |
| ---------- | --------------------------------- |
| `:%bd\|e#` | close all buffers and reopen last |

### Windows

| Command    | Action                  |
| ---------- | ----------------------- |
| ` ctrl-w_` | maximize current window |

## Vim Plugins

### NerdCommenter

| Command           | Action                                                       |
| ----------------- | ------------------------------------------------------------ |
| [count]<leader>cc | Comment out the current line or text selected in visual mode |

### GV

A Git commit browser

| Command | Action                                                        |
| ------- | ------------------------------------------------------------- |
| `:GV`   | open git commit browser                                       |
| `:GV!`  | list commits that affected the current file                   |
| `:GV?`  | fill the location list with the revisions of the current file |

### Vim EasyAlign

| Command                   | Action                              |
| ------------------------- | ----------------------------------- |
| `gaip=`                   | align on first equal sign character |
| `gaip*=`                  | align all `=` characters            |
| <code>gaip\*&#124;</code> | align all pipe characters           |

### Vim FZF

| Command          | Action                                   |
| ---------------- | ---------------------------------------- |
| `Files [PATH]`   | Files (similar to `:FZF`)                |
| `GFiles [OPTS]`  | Git files (`git ls-files`)               |
| `GFiles?`        | Git files (`git status`)                 |
| `Buffers`        | Open buffers                             |
| `Colors`         | Color schemes                            |
| `Ag [PATTERN]`   | ag search result                         |
| `Rg [PATTERN]`   | rg search result                         |
| `Lines [QUERY]`  | Lines in loaded buffers                  |
| `BLines [QUERY]` | Lines in the current buffer              |
| `Tags [QUERY]`   | Tags in the project (`ctags -R`)         |
| `BTags [QUERY]`  | Tags in the current buffer               |
| `Marks`          | Marks                                    |
| `Windows`        | Windows                                  |
| `Locate PATTERN` | `locate` command output                  |
| `History`        | `v:oldfiles` and open buffers            |
| `History:`       | Command history                          |
| `History/`       | Search history                           |
| `Snippets`       | Snippets ([UltiSnips][us])               |
| `Commits`        | Git commits (requires [fugitive.vim][f]) |
| `BCommits`       | Git commits for the current buffer       |
| `Commands`       | Commands                                 |
| `Maps`           | Normal mode mappings                     |
| `Helptags`       | Show Help tags                           |
