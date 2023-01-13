(module config.init
  {autoload {core aniseed.core
             nvim aniseed.nvim
             util config.util
             str aniseed.string}})

;generic mapping leaders configuration
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")

(nvim.set_keymap :n :<leader>q ":q<CR>" {:noremap true})
(nvim.set_keymap :n "gh" ":w<CR>" {:noremap true})

;; Ctrl P opens files
(nvim.set_keymap :n :<C-p> ":Files<CR>" {:noremap true})
(nvim.set_keymap :n :\ ":Ag<CR>" {:noremap true})

;; Easier editing of vimrc
(nvim.set_keymap :n :<leader>ev ":e $MYVIMRC<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>sv ":so %<CR>" {:noremap true})

(nvim.set_keymap :n :<localleader>/ ":nohlsearch<CR>" {:noremap true})

;sets a nvim global options
(let [options
      {;settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ;case insensitive search
       :ignorecase true
       ;smart search case
       :smartcase true
       ;shared clipboard with linux
       :list true
       :listchars "tab:>-,trail:.,extends:>"
       :clipboard "unnamedplus"
       :number true
       :relativenumber true
       :wrap true}]
  (each [option value (pairs options)]
    (core.assoc nvim.o option value)))

;import plugin.fnl
(require :config.plugin)
