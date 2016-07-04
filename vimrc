execute pathogen#infect()
set t_Co=256
" sudo apt-get install ncurses-term
if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
    set mouse=i
else
endif
if has("gui_running")
    colorscheme xoria256
    "colorscheme solarized
    "let g:solarized_termcolors=256
    "colorscheme railscasts
    "vsplit " автоматически разбить окно по вертикали
    set guioptions+=acghi
    set guioptions-=e
    set guioptions-=mrLtT
    set guifont=Ubuntu\ Mono\ 15
    set lines=40
    set columns=150
else
    colorscheme xoria256
    set guifont=Ubuntu\ Mono\ 15
endif

set background=dark
set dir=/tmp
set nobackup " не делать резервную копию перед перезаписью файла
set noswapfile " создание swap
set nocompatible " совместимость со старыми версиями vi
set autoread " обновляет буфер редактора новой версией файла
set fileencodings=utf8 " кодировка
set encoding=utf8 " кодировка
set termencoding=utf8 " кодировка
set number " отображение номеров строк
set cursorline " рисовать линию на строке курсора
set nowrap " перенос строк
"=====================================================
" синтаксис
"=====================================================
set showmatch " подсветка пар скобок
syntax on " подсветка синтаксиса
filetype indent plugin on " автоопределение типа фала
"=====================================================
" синтаксис
"=====================================================
"=====================================================
" удалять символ перед курсором клавишей backspace
"=====================================================
set backspace=indent,eol,start whichwrap+=<,>,[,]
"=====================================================
" удалять символ перед курсором клавишей backspace
"=====================================================
"=====================================================
" сворачивать фолд
"=====================================================
" zo - открыть фолдер;
" zO - открыть фолд рекурсивно;
" zc - закрыть фолд;
" zC - закрыть фолд рекурсивно;
" za - если фолд открыт - закрыть, и наобород;
" zA - то же, что и za, только рекурсивно;
" zr - уменьшить уровень закрытых фолдов (FOLDLEVEL+=1);
" zR - открыть все фолды;
" zm - увеличить уровень закрытых фолдов (FOLDLEVEL-=1)
" zM - закрыть все фолды.
set foldenable
set foldmethod=syntax
set foldlevelstart=99
" F3 - раскрыть/свернуть блок кода
map <F3> <ESC>za<CR>
" nmap <F3> <ESC>za<CR>
" vmap <F3> <ESC>zai<CR>
imap <F3> <ESC>zay<CR>
"=====================================================
" сворачивать фолд
"=====================================================
"=====================================================
" проверка текста по словарям
"=====================================================
" mkdir -p ~/.vim/spell
" http://ftp.vim.org/vim/runtime/spell/ru.utf-8.sug
" http://ftp.vim.org/vim/runtime/spell/ru.utf-8.spl
" wget http://ftp.vim.org/vim/runtime/spell/en.ascii.sug
" wget http://ftp.vim.org/vim/runtime/spell/en.ascii.spl
" включить проверку орфографии
set spell spelllang=ru,en
set nospell
"=====================================================
" проверка текста по словарям
"=====================================================
"=====================================================
" другие словарям
"=====================================================
autocmd FileType javascript set dictionary=~/.vim/dict/javascript.dict
autocmd FileType html set dictionary=~/.vim/dict/html.dict
autocmd FileType css set dictionary=~/.vim/dict/css.dict
autocmd FileType ruby set dictionary=~/.vim/dict/ruby.dict
"=====================================================
" другие словарям
"=====================================================
"=====================================================
" невидимые символы
"=====================================================
" tab - два символа для отображения табуляции (первый символ и заполнитель)
" eol - символ для отображения конца строки
" precedes - индикатор продолжения строки в лево
" extends - индикатор продолжения строки в право
" set listchars=tab:▸\ ,eol:¬
" set listchars=tab:▸→,eol:↲,precedes:«,extends:»,trail:·,nbsp:↔
set listchars=tab:▸·,eol:¬,precedes:«,extends:»,trail:·,nbsp:↔
set list
"=====================================================
" невидимые символы
"=====================================================
"=====================================================
" строка статуса
"=====================================================
set wildmenu " при использовании авто-дополнения в командной строке показывать доступные варианты
set laststatus=2 " всегда показывать строку статуса файла
"set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n] "формат строки статуса
"set ruler
"set showcmd
"+-------------------------------------------------+
"|текст Vim                                        |
"|~                                                |
"|~                                                |
"|-- ВИЗУАЛЬНЫЙ РЕЖИМ --         2f     13,8   11% |
"+-------------------------------------------------+
" ^^^^^^^^^^^                  ^^^^^^^^ ^^^^^^^^^^
" 'showmode'                  'showcmd'  'ruler'
"=====================================================
" строка статуса
"=====================================================
"=====================================================
" вкладки tabs
"=====================================================
set showtabline=2 " всегда показывать вкладки
set tabpagemax=15 " указать 15 т.к. по дефолту ограничение в 10 вкладок
nmap <F9> :tabprev<CR> " предидущая
nmap <F10> :tabnext<CR> " следующая
imap <F9> <ESC>:tabprev<CR>i
imap <F10> <ESC>:tabnext<CR>i
nmap <F5> :tabe<SPACE>
imap <F5> <ESC>:tabe<SPACE>
"=====================================================
" вкладки tabs
"=====================================================
"=====================================================
" разбить экран горизонтальная и вертикальная
"=====================================================
nmap <F6> :sp<CR>
nmap <F7> :vsp<CR>
imap <F6> <ESC>:sp<CR>i
imap <F7> <ESC>:vsp<CR>i
"=====================================================
" разбить экран
"=====================================================
"=====================================================
" отступы
"=====================================================
set autoindent "избавление от неведомых символов при встаке из глобального буфера
"set smartindent " чуть мощнее, чем autoindent, но распознает некоторые примитивы синтаксиса C для определения уровней отступов
"=====================================================
" отступы
"=====================================================
"=====================================================
" табы
"=====================================================
set expandtab " проверяет заменять табуляцию на пробелоы
set smarttab
set shiftwidth=4 " количество пробелов используемое в командах отступа, пример >>, или <<;
set softtabstop=4
set tabstop=4 "количество пробелов используемых для табуляции
" если в файле есть табы есть заклинание :retab
" для индеведуальной настройки можно создать файлы в ~/.vim/ftplugin/
"=====================================================
" табы
"=====================================================
"=====================================================
" поиск
"=====================================================
set incsearch " инкрементный поиск
set ignorecase " без учёта регистра (но если не введены символы в верх. регистре)
set smartcase " отключает ignorecase если в поиске были прописные символы
set hlsearch " подсветка всех совпадений поиска
"=====================================================
" поиск
"=====================================================
"=====================================================
" возвращение на исходную позицию
"=====================================================
 autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
"=====================================================
" возвращение на исходную позицию
"=====================================================
"=====================================================
" пам что бы не менять рвскладку
"=====================================================
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
"=====================================================
" пам что бы не менять рвскладку
"=====================================================
"=====================================================
" NERDTree дерево по F2
"=====================================================
" autocmd vimenter * NERDTree " для автозапуска
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <F2> :NERDTreeToggle<CR>
imap <F2> <ESC>:NERDTreeToggle<CR>i
let NERDTreeAutoCenter = 1
let NERDTreeCaseSensitiveSort = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeMouseMode = 1
let NERDTreeIgnore=['.*\.o$']
let NERDTreeIgnore+=['.*\~$']
let NERDTreeIgnore+=['.*\.out$']
let NERDTreeIgnore+=['.*\.so$', '.*\.a$']
let NERDTreeIgnore+=['.*\.pyc$']
let NERDTreeIgnore+=['.*\.class$']
"let g:NERDTreeDirArrowExpandable="+"
"let g:NERDTreeDirArrowCollapsible="~"
"=====================================================
" NERDTree дерево по F2
"=====================================================
"=====================================================
" настройка Airline строка состояния
"=====================================================
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = '»'
let g:airline_exclude_preview = 1
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '»'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '«'
let g:airline_symbols = {}
"let g:airline_linecolumn_prefix = '␤ '
let g:airline_symbols.linenr = '␤ '
let g:airline_linecolumn_prefix = '¶ '
"let g:airline_branch_prefix = '⎇ '
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
"let g:airline_paste_symbol = 'Þ'
"let g:airline_paste_symbol = '
"=====================================================
" настройка Airline строка состояния
"=====================================================
"=====================================================
" настройка gitgutter боковая строка git изменений
"=====================================================
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 1
"=====================================================
" настройка gitgutter боковая строка git изменений
"=====================================================
