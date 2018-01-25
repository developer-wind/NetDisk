""==================="
"1.基本设置"
""==================="
set wildmenu"按TAB键时命令行自动补齐"
set number "显示行号"
set visualbell"禁止响铃"
set ruler"显示当前光标位置"
set autoread"文件在Vim之外修改过，自动重新读入"
set autochdir"当前目录随着被编辑文件的改变而改变"
set nocp "使用vim而非vi"

filetype on "启动文件类型检查"
filetype plugin on "运行vim加载文件类型插件"

"==================="
"2.程序开发相关的设置"
"==================="

""(2)注释：选中文本后，输入;c即可注释，输入;u 即可取消注释"
vmap <silent> ;c :s/^/\/\//<CR>:noh<CR>
vmap <silent> ;u :s/\/\///<CR>:noh<CR>

""(5)其他"
syn on "开启语法高亮功能"
set pastetoggle=<F11> "F11来支持切换paste和nopaste状态。"

"============="
"5. 设置缩进"
""============="
set cindent "c/c++自动缩进"
set smartindent
set autoindent"参考上一行的缩进方式进行自动缩进"
filetype indent on "根据文件类型进行缩进"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set smarttab 

"================="
"6. 当前文件内搜索选项"
""================="
set hlsearch "开启搜索结果的高亮显示"
set incsearch "边输入边搜索(实时搜索)"

"=========================="
"8.不要交换文件和备份文件，减少冲突"
""=========================="
set noswapfile
set nobackup
set nowritebackup

"========================"
"11.txt文件按照wiki语法高亮"
""========================"
 autocmd BufNewFile *.txt set ft=confluencewiki 
 autocmd BufEnter *.txt set ft=confluencewiki

 "======================"
 "12.设置文件编码，解决中文乱码问题"
 ""======================"
 if has("multi_byte")
    set fileencodings=utf-8,ucs-bom,cp936,cp1250,big5,euc-jp,euc-kr,latin1
 else
    echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
 endif
