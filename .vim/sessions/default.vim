" ~/.configurations/.vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.3 on 21 May 2013 at 09:14:46.
" Open this file in Vim and run :source % to restore your session.

set guioptions=
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'desert' | colorscheme desert | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Agilentia/Sherpany
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +32 py_src/project/templates/sherpany/assembly/voting_instructions.html
badd +86 py_src/project/templates/sherpany/vote/vote_inner.html
badd +11 [Vundle]\ Installer
silent! argdel *
edit py_src/project/templates/sherpany/assembly/voting_instructions.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 101) / 202)
exe 'vert 2resize ' . ((&columns * 170 + 101) / 202)
" argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((30 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 031l
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 101) / 202)
exe 'vert 2resize ' . ((&columns * 170 + 101) / 202)
tabedit py_src/project/templates/sherpany/vote/vote_inner.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 101) / 202)
exe 'vert 2resize ' . ((&columns * 170 + 101) / 202)
" argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 86 - ((16 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
86
normal! 034l
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 101) / 202)
exe 'vert 2resize ' . ((&columns * 170 + 101) / 202)
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
tabnext 1
1wincmd w
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Agilentia/Sherpany
if bufnr("%") != s:bufnr_save
  execute "bwipeout" s:bufnr_save
endif
execute "cd" fnameescape(s:cwd_save)
1resize 41|vert 1resize 31|2resize 41|vert 2resize 170|
tabnext 2
1wincmd w
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTreeMirror
if bufnr("%") != s:bufnr_save
  execute "bwipeout" s:bufnr_save
endif
execute "cd" fnameescape(s:cwd_save)
1resize 41|vert 1resize 31|2resize 41|vert 2resize 170|
tabnext 2
2wincmd w
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
