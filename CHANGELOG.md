v0.0.1
---
Initial release.

Features:
* Press tab at the start of a line (before any non-whitespace character) to insert a
  literal tab, or anywhere else (after any non-whitespace character) to insert spaces to
  the next soft tab stop.
* Disable automatic mapping with `let g:SmarterTabs_map_keys = 0` if you want it on
  something other than `<Tab>`. Reassign with `inoremap <silent> KEY <esc>:call
  SmartTab()<CR>a`.

Planned future improvements:
* Provide a SmarterRetab function to retab start-of-line to literal tabs and internal
  whitespace to spaces
* Provide option to make it respect filetypes instead of being always active.
