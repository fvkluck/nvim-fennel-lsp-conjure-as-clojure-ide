(module config.plugin.sexp
  {autoload {nvim aniseed.nvim}})

(set nvim.g.sexp_filetypes "clojure,scheme,lisp,timl,fennel,janet")

(nvim.set_keymap :i :" :" {:noremap true})
