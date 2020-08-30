set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
"Plug 'mboughaba/i3config.vim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
"Plug 'scrooloose/nerdtree'
Plug 'crusoexia/vim-dracula'
call plug#end()

let g:dracula_colorterm = 0
colorscheme dracula

filetype plugin indent on
syntax on

set et
set sw=4
set smarttab
set number
:imap jj <Esc>

" enable yanking/pasting between terminals
" needs +clipboard, check using vim --version | grep clipboard
" if not, install gvim 
set clipboard=unnamedplus

"i3 config syntax highlighting
"aug i3config_ft_detection
"au!
"au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
"aug end

"enable autocompletion
"set wildmode=longest,list,full

" Enable folding according to syntax
set foldmethod=syntax

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"                                            
let g:UltiSnipsJumpForwardTrigger="<tab>"                                       
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"                                    
let g:UltiSnipsSnippetDirectories = ["/home/willithg/.vim/UltiSnips"]
let g:UltiSnipsEditSplit="vertical"


" Highlight searching
set incsearch
set showmatch
set hlsearch
" set ignorecase
set smartcase

let g:latex_view_general_viewer = "zathura"
let g:vimtex_view_method = "zathura"
let g:tex_flavor = "latex"
let g:vimtex_quickfix_open_on_warning = 0
"let g:vimtex_quickfix_mode = 2
let g:vimtex_compiler_method = "latexmk"
let g:vimtex_fold_enabled= 1
let g:vimtex_fold_manual = 1
"set conceallevel=1
"let g:tex_conceal='abdmg'
"let g:vimtex_quickfix_latexlog = {'default' : 0}
"let g:vimtex_quickfix_latexlog = {
"         \ 'overfull' : 0,
"         \ 'underfull' : 0,
"         \ 'packages' : {
"         \   'default' : 0,
"         \ },
"         \}
let g:Tex_IgnoredWarnings = 
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n"
let g:Tex_IgnoreLevel = 8

"move between splits
"nnoremap <C-U> <C-W><C-J>
"nnoremap <C-I> <C-W><C-K>
"nnoremap <C-O> <C-W><C-L>
"nnoremap <C-Y> <C-W><C-H>
nnoremap <space> za

"split down and to the right
"set splitbelow splitright

"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l 

"automatically run shortcuts script after saving folders or configs
"autocmd BufWritePost ~/Documents/folders,~/Documents/configs !bash shortcuts

"map <leader>i :setlocal spell! spelllang=en_us<CR>
"map <leader>o :setlocal spell! spelllang=es<CR>
"map <leader>p :setlocal spell! spelllang=ru<CR>
"map <leader>f :NERDTreeToggle<CR>

" Insert newline without entering insert mode
"nmap <C-i> O<Esc>j
"nmap <C-o> o<Esc>k

" Clear search highlight
nnoremap tt :noh<cr>
