"Sachin Murali
"Vim Config
"
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
filetype plugin indent on
set hidden
set nobackup
set nowritebackup
set nocompatible
set updatetime=300
set shortmess+=c
set splitright
set splitbelow
set cmdheight=2
set mouse=a
set ff=unix
set number
set list lcs=trail:·,tab:\|\  
"****************************************************************************

call plug#begin("~/.vim/plugged")
" Themes
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'erichdongubler/vim-sublime-monokai'
  Plug 'sainnhe/gruvbox-material'

  "Looks
  Plug 'preservim/nerdcommenter'
  Plug 'itchyny/lightline.vim'

" File Management
  Plug 'ryanoasis/vim-devicons'
  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Git Clients
  Plug 'tpope/vim-fugitive'

" Doom Emacs
  Plug 'folke/which-key.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  Plug 'glepnir/dashboard-nvim'

" Syntax
  Plug 'uiiaoo/java-syntax.vim'

" Working With Brackets
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'

" HTML and JSX
  Plug 'alvan/vim-closetag'
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

" Auto Completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-pyright', 'coc-java'] "'coc-prettier']


" Snippets
  " Plug 'garbas/vim-snipmate'
  " Plug 'MarcWeber/vim-addon-mw-utils'
  " Plug 'tomtom/tlib_vim'
  " Plug 'honza/vim-snippets'
  
" FZF
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

" Tagbar
  Plug 'preservim/tagbar'

" C support
  Plug 'WolfgangMehner/c-support'
  Plug 'sheerun/vim-polyglot'
  Plug 'justinmk/vim-syntax-extra'
  Plug 'bfrg/vim-cpp-modern'
call plug#end()
"****************************************************************************

" Enable theming support
if (has("termguicolors"))
	set termguicolors
endif
syntax on
set background=dark
colorscheme gruvbox
hi Normal guibg=Black ctermbg=Black
" hi clear CursorLine
" hi CursorLine gui=underline cterm=underline
set guifont=FiraCode\ Nerd\ Font\ Mono:h9:w800 

"****************************************************************************
let g:neovide_transparency=0.95
let g:neovide_cursor_vfx_mode = "sonicboom"

let g:snipMate = { 'snippet_version' : 0 }

let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:NERDTreeMinimalUI = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:cpp_function_highlight = 1
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1

let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
let g:NERDCommentEmptyLines = 0
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptytags_casesensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxregion,tsxregion',
    \ 'javascript.jsx': 'jsxregion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:python_highlight_all = 1

 let g:lightline = {
	\ 'colorscheme': 'powerline',
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '', 'right': '' }
    \ }

"****************************************************************************
lua <<EOF
local home = os.getenv('HOME')
local db = require('dashboard')


db.default_banner = {
  '',
  '',
  '⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀',
  '⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⢰⣧⣤⣤⣤⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣄⣀⣀⣀⣀⣸⣿⣿⣿⣿⣿⣧⣀⣀⣀⣀⣠⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠻⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠟⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  '',
  '',
}


db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
    {icon = '  ',
    desc = 'Recent sessions                         ',
    shortcut = 'SPC s l',
    action ='SessionLoad'},
    {icon = '  ',
    desc = 'Find recent files                       ',
    action = 'Telescope oldfiles',
    shortcut = 'SPC f r'},
    {icon = '  ',
    desc = 'Find files                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'},
    {icon = '  ',
    desc ='File browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'SPC f b'},
    {icon = '  ',
    desc = 'Find word                               ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'},
    {icon = '  ',
    desc = 'Load new theme                          ',
    action = 'Telescope colorscheme',
    shortcut = 'SPC h t'},
  }
db.custom_footer = { '', '', 'You either die a hero, or live long enough to see yourself become the villain.', } -- 'It\'s not who I am underneath, but what I do that defines me.' }
db.session_directory = "/home/sachin/.config/nvim/session"
EOF

"****************************************************************************

let mapleader=","
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <F6> :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <F7> :e ~/.config/nvim/init.vim<CR>

nnoremap <A-Right> :tabnext<CR>
nnoremap <A-Left> :tabprev<CR>

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nmap <Space>j <Plug>BookmarkNext
nmap <Space>k <Plug>BookmarkPrev

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" Find files using Telescope command-line sugar.
nnoremap <Space>ff <cmd>Telescope find_files<cr>
nnoremap <Space>fg <cmd>Telescope live_grep<cr>
nnoremap <Space>fb <cmd>Telescope buffers<cr>
nnoremap <Space>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <Space>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <Space>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <Space>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <Space>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


nnoremap <Space>sl <cmd>SessionLoad<CR>
nnoremap <Space>fr <cmd>Telescope oldfiles<CR>
nnoremap <Space>ff <cmd>Telescope find_files<CR>
nnoremap <Space>fb <cmd>Telescope file_browser<CR>
nnoremap <Space>fw <cmd>Telescope live_grep<CR>
nnoremap <Space>ht <cmd>Telescope colorscheme<CR>

" Turn terminal to normal mode with ESC
tnoremap <Esc> <C-\><C-n>

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" command! -nargs=0 Format :call CocAction('format')
"****************************************************************************

" Uncomment if you want to start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n
function! OpenTerminal()
	sp term://zsh
    set number!
	resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

function MyCustomHighlights()
   hi semshiGlobal    ctermfg=red guifg=#e06c75
   hi semshiImported  ctermfg=214 guifg=#e5c07b cterm=bold gui=bold
   hi semshiBuiltin   ctermfg=249 guifg=#c678dd
   hi semshiSelected  ctermbg=161 guibg=#364149
   hi semshiAttribute ctermfg=49  guifg=#e06c75
endfunction

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"****************************************************************************

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd BufWinEnter * silent NERDTreeMirror

autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd FileType python call MyCustomHighlights()
"****************************************************************************
