call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
Plug 'benmills/vimux'
Plug 'scrooloose/nerdtree'
call plug#end()

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

"Open FZF with <leader> ff
map <Leader>ff :Files<CR>
map <Leader>bb :Buffers<CR>
