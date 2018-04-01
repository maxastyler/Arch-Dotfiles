set laststatus=2 "Always display the status line
set noshowmode "Hide the default mode text
set t_Co=256

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
Plug 'benmills/vimux'
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Setting solarized theme
set background=light
colorscheme solarized

"Setting for airline font
let g:airline_powerline_fonts = 1

"Use smarter tabline in airline
let g:airline#extensions#tabline#enabled = 1

"Change airline separators
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_alt_sep = '|'

let g:vimtex_view_general_viewer = 'zathura'

"Rust ctags settings
 let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits',
        \'i:impls,trait implementations',
    \]
    \}

"Set the rust source path for YouCompleteMe
let g:ycm_rust_src_path = '/home/max/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

"Map space to leader key, keeping \ as it as well
map <SPACE> <leader>

"Remap moving between splits to the ctrl+{hjkl} keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Make split opening more natural
set splitbelow
set splitright

"Show line numbers
set number

"Give ability to write to a protected file with w!! if you haven't started in
"sudo mode
cmap w!! w !sudo tee > /dev/null %

"Vimux Commands
"vp - Run this command in the prompt
map <Leader>vp :VimuxPromptCommand<CR>
"vl - Rerun the last command
map <Leader>vl :VimuxRunLastCommand<CR>
"Go into copy mode in the command prompt
map <Leader>vi :VimuxInspectRunner<CR>
"Zoom the terminal prompt full - exit using {Prefix z}
map <Leader>vz :VimuxZoomRunner<CR>

"Open NERDTree with F2
map <F2> :NERDTreeToggle<CR>

"Toggle paste mode with <F11>
set pastetoggle=<F11>

"Open C-tags with <F8>
map <F8> :TagbarToggle<CR>

"Open FZF with <leader> ff
"Open FZF at certain location with <leader> fi (find in)
map <Leader>ff :Files<CR>
map <Leader>fi :Files 
map <Leader>fb :Buffers<CR>
map <Leader>fl :Lines<CR>

"Use <leader> bp and <leader> bn
map <Leader>bp :bp<CR>
map <Leader>bn :bn<CR>

"Make completion in the menu be more sane
set wildmode=longest,list,full
set wildmenu
