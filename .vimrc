set number
syntax on
set ruler
set clipboard=unnamed
set cursorline
set rnu
set nu
set hlsearch
"Plugins"

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"git-gutter"
Plug 'airblade/vim-gitgutter'
"code completion
Plug 'Valloric/YouCompleteMe'
"on demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"This is to generate a compilation database
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
"This is to enable good tmux navigationi
Plug 'christoomey/vim-tmux-navigator'
"This is the ack plug in for vim to do easy searches
Plug 'mileszs/ack.vim'
call plug#end()
" air-line theme
 let g:airline_theme='light'

 " air-line tabline
 let g:airline#extensions#tabline#enabled = 1

 " air-line
 let g:airline_powerline_fonts = 1

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

     " unicode symbols
     let g:airline_left_sep = '»'
     let g:airline_left_sep = '▶'
     let g:airline_right_sep = '«'
     let g:airline_right_sep = '◀'
     let g:airline_symbols.linenr = '␊'
     let g:airline_symbols.linenr = '␤'
     let g:airline_symbols.linenr = '¶'
     let g:airline_symbols.branch = '⎇'
     let g:airline_symbols.paste = 'ρ'
     let g:airline_symbols.paste = 'Þ'
     let g:airline_symbols.paste = '∥'
     let g:airline_symbols.whitespace = 'Ξ'

     " airline symbols"
     let g:airline_left_sep = ''
     let g:airline_left_alt_sep = ''
     let g:airline_right_sep = ''
     let g:airline_right_alt_sep = ''
     let g:airline_symbols.branch = ''
     let g:airline_symbols.readonly = ''
     let g:airline_symbols.linenr = ''
     set laststatus=2


     nmap <leader>l :set list!<CR>
     set list
     set listchars=tab:▸\.
     set colorcolumn=80
     "Find whitespace and you can remove it with shift WS
     set showcmd
     highlight ExtraWhitespace ctermbg=red guibg=red
     match ExtraWhitespace /\s\+$/
     autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
     autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
     autocmd InsertLeave * match ExtraWhitespace /\s\+$/
     autocmd BufWinLeave * call clearmatches()

     " Key remap"
      nnoremap WS :%s/\s\+$//<cr>
      noremap <Up> <NOP>
      noremap <Down> <NOP>
      noremap <Right> <NOP>
      noremap <Left> <NOP>
      noremap H :nohl<cr>
      noremap <leader>jd :YcmCompleter GoTo<CR>
      let g:tmux_navigator_no_mappings = 1
      " Key remap for tmux
      nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>i
      nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
      nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
      nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
      nnoremap <silent> <c-v> :TmuxNavigatePrevious<cr>
