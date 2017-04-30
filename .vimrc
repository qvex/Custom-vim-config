"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" Pathogen setup
runtime /home/localhost/.vim/autoload/pathogen.vim
" Bundle: tpope/vim-pathogen
call pathogen#infect()

" Bundles
" Bundle: "kien/ctrlp.vim"
" Bundle: tpope/vim-sensible
" Bundle: tpope/vim-rails
" Bundle: tpope/vim-fugitive
" Bundle: tpope/vim-dispatch
" Bundle: bling/vim-airline
" Bundle: airblade/vim-gitgutter
" Bundle: mattn/emmet-vim
" Bundle: endwise.vim
" Bundle: scrooloose/syntastic
" Bundle: tpope/vim-surround
" Bundle: tpope/vim-commentary
" Bundle: scrooloose/nerdtree
" Bundle: altercation/vim-colors-solarized
" Bundle: kien/ctrlp.vim
" Bundle: ervandew/supertab
" Bundle: "rizzatti/funcoo.vim"
" Bundle: "rizzatti/dash.vim"
" Bundle: "amiel/vim-tmux-navigator"
" Bundle: "digitaltoad/vim-jade"

syntax on
filetype plugin on
filetype indent on
filetype on
set clipboard=unnamed
set background=dark
colorscheme badwolf
set backspace=indent,eol,start


" ========================================================================================
" "Changing Leader Key
let mapleader = ","

set t_Co=256
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=2
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=longest,list,full
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

set undofile
set undodir=~/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

" ========================================================================================
" " Enable Mouse
set mouse=a

"==========================================================================="
"" Different search patterns
let g:cpp_pattern = "*.{cpp,c,h,hpp}"
let g:java_pattern = "*.{java}"
let g:makefile_pattern = "Makefile*"
let g:text_pattern = "*.{txt,text}"
let g:python_pattern = "*.{py}"
let g:cpp_java_pattern = "*.{cpp,c,h.hpp,java,cc,hh}"

"Tab switching
 nnoremap tl :tabnext<CR>
 nnoremap th :tabprev<CR>
 nnoremap tn :tabnew<CR>

" ctrl-I to switch between vertical or
" horizontal splitted windows
 map <C-I> <C-W><C-W>


let g:airline#extensions#tabline#enabled=1
let g:AutoPairsFlyMode=1
let mapleader = ","
let g:ctrlp_map = "<c-p>"
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><leader> <c-^>
vnoremap <leader>G :w !gist -p -t %:e \| pbcopy<cr>
nnoremap <C-u> gUiw
inoremap <C-u> <esc>gUiwea
nnoremap <C-p> Vy<esc>p
vnoremap <leader>S y:execute @@<cr>
nnoremap <leader>S ^vg_y:execute @@<cr>
nnoremap vv ^vg_
nnoremap gn <esc>:tabnew<cr>

cnoremap <c-a> <home>
cnoremap <c-e> <end>

nnoremap <leader>V V`]
cmap w!! w !sudo tee % >/dev/null
nnoremap vv V

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

augroup line_return
  au!
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   execute 'normal! g`"zvzz' |
    \ endif
augroup END

set wrap
set formatoptions=qrn1
"set colorcolumn=85
set list
set listchars=tab:▸\ ,eol:¬

noremap <leader>m :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$']

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :

au FocusLost * :wa

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
inoremap jk <ESC>
inoremap kj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap H ^
nnoremap L g_
inoremap " '
inoremap ' "

autocmd BufWritePre * :%s/\s\+$//e
nmap <leader>rh :%s/\v:(\w+) \=\>/\1:/g<cr>

inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

nnoremap <silent><leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#hunks#non_zero_only = 1

" Nerdtree if no file is specified
autocmd vimenter * if !argc() | NERDTree | endif

set foldlevelstart=-
nnoremap <Space> za
vnoremap <Space> za
nnoremap z0 zCz0
nnoremap <leader>z zMzvzz
nnoremap <leader>c :let @/ = ""<cr>

"==========================================================================="
"" Indentation (got to opening bracket and indent section)

nmap <leader>ip [{=%}]"
""

"==========================================================================="
"" Working with split screen nicely
" Resize Split When the window is resized"
 au VimResized * :wincmd =

"====[ make naughty characters visible  ]=================================
exec "set listchars=tab:\u25B6\\ ,trail:\uB7,nbsp:~"
set list

"=====[ Make arrow keys move visual blocks around  ]======================
runtime /bundle/dragvisuals.vim

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()
vmap  <expr>  <C-D>    DVB_Duplicate()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SWITCH BETWEEN TEST AND PRODUCTION CODE
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TODO: Make better for handling test/unit, etc
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_engine = match(current_file, '^engines') != -1

  let in_spec = match(current_file, '^spec/') != -1 ||
        \ match(current_file, '^engines/.\+/spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 ||
        \ match(current_file, '\<models\>') != -1 ||
        \ match(current_file, '\<views\>') != -1 ||
        \ match(current_file, '\<helpers\>') != -1 ||
        \ match(current_file, '\<decorators\>') != -1 ||
        \ match(current_file, '\<presenters\>') != -1 ||
        \ match(current_file, '\<uploaders\>') != -1

  if in_engine
    " TODO: use :A for test/unit, etc
    exec ":A"
  else
    if going_to_spec
      if in_app
        let new_file = substitute(new_file, '^app/', '', '')
      end
      let new_file = substitute(new_file, '\.rb$', '_spec.rb', '')
      let new_file = 'spec/' . new_file
    else
      let new_file = substitute(new_file, '\(_spec\|_test\)\.rb$', '.rb', '')
      let new_file = substitute(new_file, '^\(spec\|test\)/', '', '')
      if in_app
        let new_file = 'app/' . new_file
      end
    endif
  endif
  return new_file
endfunction

" Trying out just :A always to see how that goes
" Maybe I'll end up wanting it for rails projects, but then OpenTestAlternate
" for non-rails projects
" nnoremap <leader>. :A<cr>
" nnoremap <leader>. :call OpenTestAlternate()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUNNING TESTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>r :call RunTestFile()<cr>
map <leader>R :call RunNearestTest()<cr>
map <leader>a :call RunTests('')<cr>

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number . " -b")
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! DispatchTests(command)
  let command = a:command

  " if filereadable(".ruby-version")
  "   let ruby_version = "`cat .ruby-version`"
  "   if filereadable(".ruby-gemset")
  "     let ruby_version = ruby . "@`cat .ruby-gemset`"
  "   endif
  " endif


  exec ":Dispatch " . a:command
endfunction

function! RunTests(filename)
    :w
    if filereadable("script/test")
      call DispatchTests("script/test " . a:filename)
    elseif filereadable("Gemfile")
      call DispatchTests("bundle exec rspec --color " . a:filename)
    else
      call DispatchTests("rspec --color " . a:filename)
    end
endfunction
