set  rtp+=/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2 "Always display the status line
set noshowmode "Hide the default mode text
set t_Co=256

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
Plug 'benmills/vimux'
Plug 'scrooloose/nerdtree'
Plug '/lib/python3.6/site-packages/powerline/bindings/vim/plugin'
Plug 'valloric/youcompleteme'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
call plug#end()

"Set the rust source path for YouCompleteMe
let g:ycm_rust_src_path = '/home/max/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

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

""""""""""
"Set relative line numbers, nice for jumping around
""""""""""
set relativenumber

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
map <Leader>bb :Buffers<CR>
map <Leader>ll :Lines<CR>

"Make completion in the menu be more sane
set wildmode=longest,list,full
set wildmenu
