"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>ee :e! ~/vimrc.d/installed_plugins.vim<cr>
autocmd! bufwritepost installed_plugins.vim source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#rc('~/vimrc.d/bundle/')

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

map <leader>d <plug>NERDTreeTabsToggle<CR>

let NERDTreeIgnore=['\.pyc$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'WebAPI.vim'
Plugin 'Gist.vim'

let g:gist_use_password_in_gitconfig=1

cabbrev gist <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Gist' : 'gist')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Tagbar'

noremap <leader>f :TagbarToggle<CR>

let g:tagbar_autofocus=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'kien/ctrlp.vim'

noremap <leader>t :CtrlP 
noremap <leader>r :CtrlPBufTag<CR>

let g:ctrlp_switch_buffer = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PEP8 indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'hynek/vim-python-pep8-indent'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jedi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'davidhalter/jedi-vim'

" Shortcuts
let g:jedi#goto_assignments_command = "<C-C>g"
let g:jedi#goto_definitions_command = "<C-C>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<C-C>n"
let g:jedi#completions_command = "<C-N>"
let g:jedi#rename_command = "<C-C>r"

" Configurations
let g:jedi#use_tabs_not_buffers = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'bling/vim-airline'

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'

cabbrev git <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Git' : 'git')<CR>

Plugin 'gregsexton/gitv'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Lokaltog/vim-easymotion'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Alignment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/Align'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Textile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Textile-for-VIM'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => XPTemplate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'drmingdrmer/xptemplate'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Work status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ListWorkStatus()
    tabnew
    CtrlP $HOME/work_status
endfunc

cabbrev work <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'call ListWorkStatus()' : 'work')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Salt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'saltstack/salt-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tomasr/molokai'

let g:molokai_original = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tmuxline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'edkolev/tmuxline.vim'

let g:airline#extensions#tmuxline#enabled = 0

let g:tmuxline_separators = {
            \ 'left' : '▶',
            \ 'left_alt': '>',
            \ 'right' : '◀',
            \ 'right_alt' : '<',
            \ 'space' : ' '}

let g:tmuxline_preset = 'full'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Shougo/unite.vim'

Plugin 'Shougo/vimproc.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ansible
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'chase/vim-ansible-yaml'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-surround
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-surround'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'fatih/vim-go'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gocode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'nsf/gocode', {'rtp': 'vim/'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'terryma/vim-multiple-cursors'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-tmux-navigator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'christoomey/vim-tmux-navigator'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-easy-align
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'junegunn/vim-easy-align'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
