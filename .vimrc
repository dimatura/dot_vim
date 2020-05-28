"vim: foldmethod=marker commentstring="%s

" plugs{{{
    call plug#begin('~/.vim/plugged')
    "" self
    Plug 'dimatura/eigen_vimdoc'
    Plug 'dimatura/opencv_vimdoc'
    Plug 'dimatura/pil_vimdoc'
    Plug 'dimatura/ros_vimdoc'
    Plug 'dimatura/motw_vimdoc'
    Plug 'dimatura/vim-cpp-enhanced-highlight'
    Plug 'vim-scripts/spin.vim'
    Plug '~/repos/dm_vim_misc'
    Plug '~/repos/ultisnip-snippets'
    Plug '~/repos/vimsel'
    " third party
    "Plug 'bling/vim-airline' " this is ~100ms startup
    "Plug 'hdima/python-syntax', { 'for' : 'python' }
    "Plug 'KabbAmine/zeavim'
    "Plug 'MarcWeber/vim-addon-mw-utils'
    "Plug 'cjrh/vim-conda'
    "Plug 'git-time-metric/gtm-vim-plugin'
    "Plug 'godlygeek/tabular'
    "Plug 'matze/vim-move' " move blocks and lines
    "Plug 'mhinz/vim-startify' "also hangups stuck nfs
    "Plug 'peterhoeg/vim-tmux'
    "Plug 'tomtom/tlib_vim'
    "Plug 'tpope/vim-obsession'
    "Plug 'wting/gitsessions.vim'
    "Plug 'dhruvasagar/vim-table-mode'
    "Plug 'blindFS/vim-taskwarrior'
    "Plug 'ludovicchabant/vim-gutentags' "ctags updater
    "Plug 'rking/ag.vim' " fzf has its own ag
    "Plug 'Shougo/neomru.vim' " note: may cause hangups with stuck nfs
    "Plug 'ujihisa/unite-colorscheme'
    "Plug 'Shougo/neoyank.vim'
    "Plug 'Shougo/unite.vim'
    "Plug 'msprev/unite-bibtex', {'for': ['tex', 'latex']} " see also citation.vim and fzf-bibtex
    "Plug 'Shougo/unite-outline'
    "Plug 'tsukkee/unite-tag'
    "Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    "Plug 'vim-scripts/Jinja'
    "Plug 'ambv/black'
    "Plug 'kana/vim-altr'
    Plug 'msprev/fzf-bibtex'
    Plug 'SirVer/ultisnips' " ~100ms startup
    Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'avakhov/vim-yaml', { 'for': 'yaml' }
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'gorodinskiy/vim-coloresque'
    Plug 'gregsexton/MatchTag', { 'for' : 'html' }
    Plug 'itchyny/lightline.vim' " this is ~100ms startup
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'lervag/vimtex', {'for': ['tex', 'latex']}
    Plug 'majutsushi/tagbar' " like taglist but more automatic
    Plug 'moll/vim-bbye' " close buffers use Bdelete
    Plug 'nvie/vim-flake8', {'for' : 'python'}
    Plug 'romainl/vim-qf' " quickfix stuff
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'thinca/vim-localrc'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'tpope/vim-abolish'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-sensible' " base config
    Plug 'vim-scripts/Align' " use 'ga' to align
    "Plug 'vim-scripts/Jinja'
    "Plug 'Glench/Vim-Jinja2-Syntax'
    Plug 'wakatime/vim-wakatime'
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-notes'
    Plug 'vim-scripts/a.vim'
    Plug 'fncll/wordnet.vim'
    Plug 'rhysd/vim-clang-format'
    Plug 'zxqfl/tabnine-vim'
    Plug 'aklt/plantuml-syntax'
    Plug 'chr4/nginx.vim'
    Plug 'lepture/vim-jinja'
    Plug 'kana/vim-operator-user'
    " for vim-lsp
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'ryanolsonx/vim-lsp-python'
    Plug 'liuchengxu/vista.vim'
    Plug 'keith/swift.vim'
    "" colorschemes
    Plug 'altercation/vim-colors-solarized'
    Plug 'ajh17/Spacegray.vim'
    Plug 'junegunn/seoul256.vim'
    Plug 'vim-scripts/Guardian'
    Plug 'Lokaltog/vim-distinguished'
    Plug 'vim-scripts/github-theme'
    Plug 'nanotech/jellybeans.vim'
    Plug 'vim-scripts/twilight'
    Plug 'vim-scripts/rainbow.zip'
    Plug 'yuratomo/neon.vim'
    Plug 'vim-scripts/candycode.vim'
    Plug 'chriskempson/vim-tomorrow-theme'
    Plug 'tomasr/molokai'
    Plug 'croaker/mustang-vim'
    Plug 'tpope/vim-vividchalk'
    Plug 'chriskempson/base16-vim'
    Plug 'noah/vim256-color'
    call plug#end()
" }}}

" misc settings {{{
    " note: some 'obvious' ones from here were removed since they were in
    " sensible.vim
    " set runtimepath=$HOME/.vim,$HOME/.vim/after,$VIMRUNTIME
    set modeline
    set scrolloff=4 " lines of context
    set grepprg=grep\ -nH\ $*
    " vim grep
    let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
    set ignorecase
    set smartcase
    " backspace and cursor keys wrap
    set whichwrap+=<,>,h,l
    " silent bell, see help visualbell
    set noerrorbells
    set novisualbell
    set vb t_vb=
    set hlsearch "highlight search matches
    " display as much of last line as possible, display unprintable chars as hex
    set display=lastline,uhex
    "set textwidth=80 " restrict column width to 80
    set wildignore=.svn,CVS
    set wildignore+=*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.pyc
    set wildignore+=.*.swp,.*.swo
    set wildignore+=*.log,*.aux,*.dvi,*.aut,*.bbl,*.blg,*.out,*.toc,*.ttt,*.snm
    set wildignore+=*.fdb_latexmk,*.fls,*.lof,*.lot,*.brf,*.pdf
    set wildignore+=*.ipynb
    set wildignore+=*.png,*.jpg,*.JPG,*.jpeg,*.JPEG
    set wildignore+=*.pth,*.ts,*.onnx,*.mlmodel,*.pb
    set wildmenu
    set wildmode=full
    set cmdheight=1
    " for debugging
    "set verbose=10
    set nofsync
    " this is to fix trouble when using fish
    if $SHELL =~ 'bin/fish'
        set shell=/bin/sh
    endif
    " A buffer may become hidden and with unsaved changes
    set hidden
    set undodir^=~/.local/share/vim/undo
    set backupdir^=~/.local/share/vim/backup
    " for swap files
    set directory^=~/.local/share/vim/swap
    " thesaurus
    " TODO is there better way to specify path?
    " TODO get better thesaurus?
     "use with c-x c-t
    set thesaurus+=~/repos/dm_vim_misc/mthesaur.txt
    set nowrap
    " suggested by startify
    "set viminfo='100,n$HOME/.vim/files/info/viminfo
    " blank,buffers,curdir,folds,globals,help,localoptions,options,resize,sesdir,slash,tabpages,unix,winpos,winsize
    "set sessionoptions-=buffers
    set sessionoptions=buffers
" }}}

" tab settings {{{
    " The all important tab settings
    " Note that some are overridden for specific programming languages.
    " set softtabstop=4
    set tabstop=8
    set expandtab
    set shiftwidth=4
    set smarttab autoindent
" }}}

" folding {{{
   " automatically save and restore folds
    set foldmethod=marker
    " default fold level, all open, set it 200 or something
    " to make it all closed.
    set foldlevel=0
    set foldcolumn=1 " width of foldcolumn
    " make fillchars empty
    set fillchars=fold:\ 
    func! MyFoldText()
        let line = getline(v:foldstart)
        " delete comment-type chars
        let sub = substitute(line, '/\*\|\*/\|{{{\d\=\|//\|{\|\"\|#', '', 'g')
        " eat up whitespace
        let sub = substitute(sub, '^\s\+\|\s\+$', '', 'g')
        " new text for folds
        let sub = v:folddashes . v:folddashes . '{ ' . sub . ' }'
        return sub
        " fix folds we have introduced
        "}}}
    endfunc
    set foldtext=MyFoldText()
" }}}

" window handling {{{
    " make windows equal in width and height
    " tip: use winfixheight and winfixwidth to make these unaffected
    set equalalways
" }}}

" completion {{{
    " set code completion for each filetype
    " dictionary for tab completion
    " set dictionary= /usr/share/dict/words
    set complete=.,t,i,b,w,k,u
    set completeopt=menuone,menu
" }}}

" appearance and colors {{{
    " 256 colors in terminal
    set t_Co=256
    if has("gui_running")
        if hostname() == 'dimatura-laptop'
            " set guifont=Bitstream\ Vera\ Sans\ Mono\ 8
            set guifont=Droid\ Sans\ Mono\ 12
        elseif hostname() == 'thunderhawk'
            set guifont=Droid\ Sans\ Mono\ 12
        elseif hostname() == 'pillan'
            "set guifont=Droid\ Sans\ Mono\ 12
            set guifont=Noto\ Mono\ 10
        endif
        " note: m is menu bar flag, L is left hand scrollbar when split,
        " T is toolbar
        " r is right scrollbar
        set guioptions-=m
        set guioptions-=T
        set guioptions-=r
        set guioptions-=L
        set guioptions-=0
    else
    endif

    " Set colors for folds initially and after colorscheme changes
    autocmd ColorScheme * highlight clear Folded
    autocmd ColorScheme * highlight Folded term=bold gui=bold guifg=#93b3a3
    autocmd ColorScheme * highlight clear FoldColumn 
    autocmd ColorScheme * highlight FoldColumn term=bold gui=bold guifg=#93b3a3

    " activate colorscheme now so autocommands kick in
    set background=dark
    let g:molokai_original = 0
    if has("gui_running")
        " colorscheme mustang
        " colorscheme slate
        colorscheme Tomorrow-Night
        " colorscheme Tomorrow-Night-Bright
        " colorscheme solarized
        " colorscheme ir_black
        " colorscheme mustang
        " colorscheme molokai
        " colorscheme underwater
        " colorscheme base16-ocean
        " colorscheme base16-3024
        " colorscheme base16-brewer
        " colorscheme base16-bright
        " colorscheme base16-codeschool
        " colorscheme base16-atelierdune
        " colorscheme base16-default
        " colorscheme base16-atelierheath
        " colorscheme pacific
        " colorscheme oceandeep
        " colorscheme fruity
        " colorscheme cloudmidnights
        " colorscheme paintbox
    else
        " colorscheme candycode
        " colorscheme fu
        "colorscheme 256-jungle
        colorscheme 256_asu1dark
        " colorscheme dante
    endif

    " The command :dig displays digraphs for the funky characters
    set listchars=tab:»·,trail:·,eol:¶
" }}}

" mappings and commands {{{
" note to self: also check filetype-specific settings in dm_vim_misc/ repo.

    " buffers  {{{
        nnoremap <silent> <C-n> :bn<CR>
        " use moll/vim-bbye plugin to delete buffer but not window
        nnoremap <silent> <leader>bd :Bdelete<CR>
    " }}}

    " window movement {{{
    " Smart way to move btw. windows
        nnoremap <C-j> <C-W>j
        nnoremap <C-k> <C-W>k
        nnoremap <C-h> <C-W>h
        nnoremap <C-l> <C-W>l
        " equal size
        nnoremap <space>= <c-W>=
        nnoremap <space>o <c-W>o
    " }}}

    " other {{{
        command HighlightWhitespace /\s\+$
        " reflow paragraph text
        nnoremap Q gqap
        " reflow visually selected lines
        vnoremap Q gq

        " make j and k more intuitive
        nnoremap <silent> j gj
        nnoremap <silent> k gk
        inoremap <silent> <Up> <Esc>gka
        inoremap <silent> <Down> <Esc>gja

        "  In visual mode when you press * or # to search for the current selection
        vnoremap <silent> * :call VisualSearch('f')<CR>
        vnoremap <silent> # :call VisualSearch('b')<CR>

        " When you press gv you vimgrep after the selected text
        vnoremap <silent> gv :call VisualSearch('gv')<CR>
        map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>
        " for x11 clipboard; TODO investigate this further
        map ,y "+y
         " consider this: map jj to esc
        inoremap jj <Esc>
        nnoremap <silent> <leader>h :nohlsearch<CR>
        " Fix email paragraphs
        nnoremap <leader>par :%s/^>$//<CR>
        " Swap ; and :  Convenient. But breaks some stuff like the R plugin,
        " beware.
        nnoremap ; :
        nnoremap : ;
        nnoremap <leader>w :w<CR>
        " nnoremap <leader>m :make<CR>
        " nnoremap <silent> <leader>cn :cn<CR>
        " nnoremap <silent> <leader>cp :cp<CR>
    " }}}

    nnoremap <silent> <leader>cd :cd %:p:h<CR>

    " plugins {{{
        " note other plugin conf has been moved to dm_vim_misc/plugin/settings repo.
        nnoremap <buffer> <F12> :!ctags-exuberant -R <CR>
        nnoremap <silent> <F8> :TagbarToggle<CR>
        " TODO consider unite for this
        " set pwd to cwd of current file
        " a keybinding for alternate plugin
        nnoremap <leader>ba :A<CR>

        " screen shell thingy
        " these mappings inspired on r-plugin
        "nnoremap <leader>ae :ScreenSend<cr>
        " send line
        "nmap <leader>l V:ScreenSend<cr>
        "nnoremap <silent> <leader>h :nohlsearch<CR>
        "vnoremap ss :ScreenSend<cr>

        " couple of dummy mappings so they don't get mapped to something else
        " that interferes with preferred mappings. Hacky.
        " TODO is there a better way?
        map D01 <Plug>CRV_CRefVimInvoke
        map D02 <Plug>AM_w=

        " unite
        " nnoremap <silent> <F2> :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<CR>
        " nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank -start-insert history/yank<CR>
        " nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<CR>

        " fzf.vim
        nnoremap <silent> <F2> :<C-u>History<CR>
        nnoremap <leader>s :<C-u>Snippets<CR>
        nnoremap <leader>f :<C-u>Files<CR>
        nnoremap <leader>g :<C-u>Ag<CR>
        nnoremap <leader>l :<C-u>Lines<CR>
        nnoremap <leader>t :<C-u>Tags<CR>
        nnoremap <leader>bt :<C-u>BTags<CR>
        " nnoremap <F3> :<C-u>Buffers<CR>
        nnoremap <leader>b :<C-u>Buffers<CR>

        " commands that either go to unite or fzf (or who knows? LeaderF?
        " ctrlP?)
        command FuzzSnippets Snippets
        command FuzzFiles Files
        command FuzzAg Ag
        command FuzzBTags BTags
        command FuzzBuffers Buffers
        command FuzzMru History

        nnoremap <silent> <leader>a :A<CR>

        command Black !black %

        " TODO also consider -quick-match option
        " apparently option '-' makes it so only file buffers are shown
        "nnoremap <F3> :<C-u>Unite -no-split -buffer-name=buffer buffer<CR>
        " note start insert puts you into insert/search mode
        "noremap <leader>t :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>
        "nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files -start-insert file<CR>
        "nnoremap <leader>g :<C-u>Unite -no-split -buffer-name=grep grep:.<CR>

        " consider fzf versions of these (fzf.vim)
        " Files, Buffers, Ag, Snippets, Lines
    " }}}

" }}}

" abbreviations {{{
    " command line configs
    " useful when I get w with shift by accident wrong
    cnoreabbrev Wq wq
    cnoreabbrev W w
    " cnoreabbrev Make make " turns out dispatch.vim uses Make
    cnoreabbrev Make make
    " cnoreabbrev vwg VimwikiGoto
" }}}

let g:fzf_layout = {'window': {'width': 0.9, 'height': 0.6, 'border': 'rounded'} }

" lsp
"au User lsp_setup call lsp#register_server({
"            \ 'name': 'pyls',
"            \ 'cmd': {server_info->['/home/dmaturan/miniconda2/envs/pyls/bin/pyls']},
"            \ 'whitelist': ['python'],
"            \ })
"
" let g:lsp_diagnostics_enabled = 0
