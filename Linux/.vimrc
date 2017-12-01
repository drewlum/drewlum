set nocompatible              " be iMproved, required
filetype off                  " required

set ls=2 
filetype on
filetype plugin on
filetype indent on

"size of a hard tabstop
set tabstop=4

" size of an indent
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make tab insert indents instead of tabs at the beginning of a line
set smarttab

"always uses spaces instead of tab characters
set expandtab

"set textwidth=120
"set colorcolumn=120

let g:solarized_termcolors = 255 
let g:solarized_termtrans = 1
let g:solarized_degrade = 0 
let g:solarized_contrast = "normal"
let g:solarized_visibility= "normal"
colorscheme solarized
set background=dark
syntax on

let g:xml_syntax_folding = 1
set foldmethod=syntax

set ts=2
set sw=2
set diffopt+=iwhite

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.rst setlocal spell
autocmd BufRead,BufNewFile README setlocal spell
set complete+=kspell

set textwidth=120
"set colorcolumn=+1
set foldmethod=indent

let mapleader = "-"
set rtp+=~/.fzf

"syntastic stuff
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

"Markdown stuff
let g:instant_makdown_slow = 1
let g:instant_markdown_autostart = 0

"Fuzzy format
"let g:clang_format_path = '/usr/bin/clang-format-3.8'
"map <leader>p :pyf $HOME/git/drewlum/Scripts/clang-format.py<cr>

"set grepprg=grep\ -F\ -n\ --include=\*.{py,js,py,java,c,cpp,hpp,h}\ -r\ $*\ \.
":nmap ,t :!(cd %:p:h;ctags *)&
"set tags=./tags,./../tags,./../../tags,./../../../tags,tags

let g:clang_format#detect_style_file = 1

"let g:clang_format#style_options = {
"           \ "Language": "Cpp",
"           \ "AccessModifierOffset": -1,
"           \ "AlignAfterOpenBracket": "Align",
"           \ "AlignConsecutiveAssignments": "true",
"           \ "AlignConsecutiveDeclarations": "true",
"           \ "AlignEscapedNewlinesLeft": "true",
"           \ "AlignOperands": "true",
"           \ "AlignTrailingComments": "true",
"           \ "AllowAllParametersOfDeclarationOnNextLine": "false",
"           \ "AllowShortBlocksOnASingleLine": "false",
"           \ "AllowShortCaseLabelsOnASingleLine": "false",
"           \ "AllowShortFunctionsOnASingleLine": "Inline",
"           \ "AllowShortIfStatementsOnASingleLine": "false",
"           \ "AllowShortLoopsOnASingleLine": "false",
"           \ "AlwaysBreakAfterReturnType": "None",
"           \ "AlwaysBreakBeforeMultilineStrings": "false",
"           \ "AlwaysBreakTemplateDeclarations": "true",
"           \ "BinPackArguments": "true",
"           \ "BinPackParameters": "false",
"           \ "BraceWrapping": 
"           \ "  AfterClass":      "false",
"           \ "  AfterControlStatement": "true",
"           \ "  AfterEnum":       "true",
"           \ "  AfterFunction":   "true",
"           \ "  AfterNamespace":  "true",
"           \ "  AfterObjCDeclaration": "true",
"           \ "  AfterStruct":     "true",
"           \ "  AfterUnion":      "true",
"           \ "  BeforeCatch":     "true",
"           \ "  BeforeElse":      "true",
"           \ "  IndentBraces":    "true",
"           \ "BreakBeforeBinaryOperators": "None",
"           \ "BreakBeforeBraces": "Allman",
"           \ "BreakBeforeTernaryOperators": "false",
"           \ "BreakConstructorInitializersBeforeComma": "false",
"           \ "ColumnLimit": 80,
"           \ "ConstructorInitializerAllOnOneLineOrOnePerLine": "false",
"           \ "ConstructorInitializerIndentWidth": 2,
"           \ "ContinuationIndentWidth": 2,
"           \ "Cpp11BracedListStyle": "true",
"           \ "DerivePointerAlignment": "false",
"           \ "DisableFormat":   "false",
"           \ "ExperimentalAutoDetectBinPacking": "false",
"           \ "ForEachMacros":   "[ foreach, Q_FOREACH, BOOST_FOREACH ]",
"           \ "IndentCaseLabels": "true",
"           \ "IndentWidth":     2,
"           \ "IndentWrappedFunctionNames": "false",
"           \ "KeepEmptyLinesAtTheStartOfBlocks": "false",
"           \ "MacroBlockBegin": '',
"           \ "MacroBlockEnd":   '',
"           \ "MaxEmptyLinesToKeep": 1,
"           \ "NamespaceIndentation": "None",
"           \ "PenaltyBreakBeforeFirstCallParameter": 1,
"           \ "PenaltyBreakComment": 300,
"           \ "PenaltyBreakFirstLessLess": 120,
"           \ "PenaltyBreakString": 1000,
"           \ "PenaltyExcessCharacter": 1000000,
"           \ "PenaltyReturnTypeOnItsOwnLine": 200,
"           \ "PointerAlignment": "Right",
"           \ "ReflowComments":  "true",
"           \ "SortIncludes":    "false",
"           \ "SpaceAfterCStyleCast": "false",
"           \ "SpaceBeforeAssignmentOperators": "true",
"           \ "SpaceBeforeParens": "Never",
"           \ "SpaceInEmptyParentheses": "false",
"           \ "SpacesBeforeTrailingComments": 4,
"           \ "SpacesInAngles":  "false",
"           \ "SpacesInContainerLiterals": "false",
"           \ "SpacesInCStyleCastParentheses": "false",
"           \ "SpacesInParentheses": "false",
"           \ "SpacesInSquareBrackets": "false",
"           \ "Standard": "Auto",
"           \ "TabWidth": 2,
"           \ "UseTab": Never,
"           }

source ~/.vim/autoload/plugged.helper.vim
