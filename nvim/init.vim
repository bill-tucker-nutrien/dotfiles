" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin(stdpath('data'). '/plugged')

" spacebar is the biggest key, so you that as leader.
let mapleader = "\<Space>"


" Specify your required plugins here.
Plug 'imbilltucker/vim-better-default'

" Optional useful plugins I highly recommend.
Plug 'easymotion/vim-easymotion'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-commentary'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ncm2/float-preview.nvim'
"
"it's been annoying to have pairs of things, so commenting this out for now.
"Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }

Plug 'w0rp/ale'

Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'bakpakin/fennel.vim'
" Plug 'tpope/vim-dispatch'
" Only in Neovim:
Plug 'radenling/vim-dispatch-neovim'
Plug 'clojure-vim/vim-jack-in'

" Conjure! :D
Plug 'Olical/conjure', { 'tag': 'v4.3.1' }

Plug 'vimwiki/vimwiki'

" like surround but with . working"
Plug 'machakann/vim-sandwich'

"python
Plug 'davidhalter/jedi'

"colorschemes
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'lifepillar/vim-solarized8'


call plug#end()

" Configuration for various plugins.
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option('keyword_patterns', {'clojure': '[\w!$%&*+/:<=>?@\^_~\-\.#]*'})
" set completeopt-=preview

let g:float_preview#docked = 0
let g:float_preview#max_width = 80
let g:float_preview#max_height = 40

let g:coc_global_extensions = ['coc-conjure']
let g:ale_linters = {
      \ 'clojure': ['clj-kondo', 'joker']
      \}
let g:python3_host_prog = '/usr/bin/python3'

" set completeopt=longest,menuone,preview
" let g:deoplete#sources = {}
" let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips']

" filetype off


" vimwiki settings
let g:vimwiki_folding ="list"
" Clear the search buffer when hitting return
" ..this breaks vimwiki's lopen open mode. return doesn't follow links
" nnoremap <CR> :nohlsearch<cr>
" turn off vim wiki tab control in insert mode, so ultisnips will work
let g:vimwiki_table_mappings = 0

" convert vimwiki to HTML
:nmap <Leader>wc <Plug>Vimwiki2HTML

" create a table to edit
map <Leader>T :VimwikiTable<CR>

let vimwiki = {}
let vimwiki.path = '~/vimwiki/'

let topdevz_wiki = {}
let topdevz_wiki.path = '~/vimwiki_topdevz'
let snapinc_wiki = {}
let snapinc_wiki.path = '~/vimwiki_snapinc'
let nutrien_wiki = {}
let nutrien_wiki.path = '~/vimwiki_nutrien'

let g:vimwiki_list = [{}, nutrien_wiki, topdevz_wiki, snapinc_wiki]

let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

" filetype plugin indent on
" syntax on

" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" to be like CtrlP
nnoremap <C-p> :FZF<CR>

" insert date
map <leader>D :put =strftime('%a %d %b %Y') <CR>

" remove markdown and text whitespace
autocmd BufWritePre *.cfm :%s/\s\+$//e
autocmd BufWritePre *.clj :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.json :%s/\s\+$//e
autocmd BufWritePre *.md :%s/\s\+$//e
autocmd BufWritePre *.tex :%s/\s\+$//e
autocmd BufWritePre *.txt :%s/\s\+$//e
autocmd BufWritePre *.wiki :%s/\s\+$//e

"Remove all trailing whitespace with a manual command because I can't think of
"all the file types I'll end up using.  Let's use the key capital Q.
" capital Q is the entry to ex, the standard editor; but we use vim
nnoremap Q :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>


" here is a program to open things
let g:netrw_browsex_viewer= "xdg-open"

" file exploration menu settings
let g:netrw_banner = 0        " remove directions at top of file listing
let g:netrw_liststyle=3       " tree style listing
let g:netrw_browse_split = 3  " split horizontal
let g:netrw_altv = 1
let g:netrw_winsize=25        " width of window
let g:netrw_preview=1

" set mouse=nv
" set mouse=a
set background=light
" set background=dark
" autocmd vimenter * ++nested colorscheme solarized8
"
""For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
" if (has("termguicolors"))
"   set termguicolors
" endif 

"Trying to fix vimwiki so that the ctrl-uparrow goes back a day in diary
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif 

" https://superuser.com/questions/215180/when-running-screen-on-osx-commandr-messes-up-arrow-keys-in-vim-across-all-scr/215181#215181
map <Esc>[A <Up>
map <Esc>[B <Down>
map <Esc>[C <Right>
map <Esc>[D <Left>
