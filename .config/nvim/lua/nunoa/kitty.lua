vim.cmd([[
augroup kitty_mp
    autocmd!
    au VimLeave * :silent !kitty @ set-spacing padding-v=default padding-h=default margin=default
    au VimEnter * :silent !kitty @ set-spacing padding-v=0 padding-h=0 margin=0
augroup END
]])
