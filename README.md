SmarterTabs
===

In the historians' tales of the Great Editor Wars, chapters will be written about the
Battle of Indentation, wherein the Tabs and the Spaces fought for years over who had the
superior ideaology. Tab proponents point out that different people can use different
`softtabstop` settings to fit their preference and you're using less disk space; Space
supporters point out that with hard tabs alignment within source code becomes difficult,
there's consistency between computers, and it takes away a pain point of configuring how
tabs are displayed anyways. A small faction of [Elastic
Tabstop](http://nickgravgaard.com/elastic-tabstops/) made little headway due, as far as we
know, for that not being possible in vim. Maybe neovim, one day.

My personal preference is to use tabs for indentation and spaces for alignment, but that's
not easy to make happen with default vim settings.

[This VimWiki page](http://vim.wikia.com/wiki/Indent_with_tabs,_align_with_spaces)
recommends using the [Smart
Tabs](https://vim.sourceforge.io/scripts/script.php?script_id=231) plugin, but I found it
to have some issues and assume a bit too much about my source layout---I think it thinks
I'm only writing C or something.

Thus, I started work on this, which doesn't try to do too much. With no configuration,
pressing `Tab` anywhere between the start of line and first nonwhitespace character
inserts a literal tab, and anywhere else it inserts enough spaces to advance to the next
tabstop as indicated by `softtabstop`.

Set `let g:SmarterTabs_map_keys = 0` in your `vimrc` to disable the automatic mapping of
`Tab` if you want to bind it to something else, for some reason. The default mapping is

```vim
inoremap <silent> <Tab> <Esc>:call SmartTab()<CR>a
```

if you want to put that on something else, just replace `<Tab>`.

Installation
---
If you're using a plugin manager, you probably know what to do already. If you're not, you
really should! I like [junegunn/vim-plug](https://github.com/junegunn/vim-plug) a lot.

Changelog
---
See the [Changelog file](CHANGELOG.md) for changelog and roadmap.

