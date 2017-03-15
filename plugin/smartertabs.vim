function SmartTab()
	let s:line = getline(line("."))
	let s:line = s:line[0 : col(".") - 1]
	if match(s:line, "^\\s*$") >= 0
		exe "normal! a\<C-v>\<Tab>"
	else
		let s:distance = &sts - (virtcol(".") % &sts)
		exe "normal! " . s:distance . "a \<Esc>"
	endif
endfunction

if !exists('g:SmarterTabs_map_keys')
	let g:SmarterTabs_map_keys = 1
endif

if g:SmarterTabs_map_keys
	inoremap <silent> <Tab> <Esc>:call SmartTab()<CR>a
endif
