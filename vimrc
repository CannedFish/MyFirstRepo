" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

colo evening
set nocompatible " 关闭 vi 兼容模式
syntax on " 自动语法高亮
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 2
set softtabstop=2 " 使得按退格键时可以一次删掉 2 个空格
set tabstop=2 " 设定 tab 长度为 2
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on " 开启插件
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
" set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
" 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
set scrolloff=5 " 设置距离上下还有5行就开始滚动

"""""""""""""""" switch window ============
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

"=============== taglist ===================
"let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
"let Tlist_OnlyWindow=1
"let Tlist_Use_Right_Window=0
"let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
"let Tlist_Show_Menu=1
"let Tlist_Max_Submenu_Items=10
"let Tlist_Max_Tag_Length=20
let Tlist_Use_SingleClick=1
"let Tlist_Auto_Open=0
"let Tlist_Close_On_Select=0
"let Tlist_File_Fold_Auto_Close=1
"let Tlist_GainFocus_On_ToggleOpen=0
"let Tlist_Process_File_Always=1
"let Tlist_WinHeight=10
"let Tlist_WinWidth=30
"let Tlist_Use_Horiz_Window=1

"nnoremap <silent> <F8> :TlistToggle<CR>

"================ minibufexplorer ============
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
let g:miniBufExplMorThanOne=0

"================ NERDTree ====================
let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
	exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction


"================ WinManager ==================
let g:winManagerWindowLayout="NERDTree|TagList"
"let g:winManagerWindowLayout="FileExplorer|TagList"
let g:buffExplorerMaxHeight=30
let g:miniBufExplorerMoreThanOne=0

nmap wm :WMToggle<CR>

"================ SuperTab ====================
let g:SuperTabDefaultCompetionType="context"

"================ NERD_commenter ==============
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

"================ JsBeautiful =================
"<leader>ff switch one js file to readable format

"================ javascript.vim ==============
let b:javascript_fold=1
let javascript_enable_domhtmlcss=1

"================ dict files ==================
autocmd filetype javascript set dictionary+=~/.vim/dict/javascript.dic
autocmd filetype javascript set dictionary+=~/.vim/dict/node.dic
autocmd filetype css set dictionary+=~/.vim/dict/css.dic
autocmd filetype php set dictionary+=~/.vim/dict/php.dic

"================ mouse setting ===============
set mouse=a
set selection=exclusive
set selectmode=mouse,key
