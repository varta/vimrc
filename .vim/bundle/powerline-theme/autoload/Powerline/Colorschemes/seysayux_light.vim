call Pl#Hi#Allocate({
	\ 'black'          : 16,
	\ 'white'          : 231,
	\
	\ 'darkestgreen'   : 22,
	\ 'darkgreen'      : 28,
	\ 'mediumgreen'    : 70,
	\ 'brightgreen'    : 148,
	\
	\ 'darkestcyan'    : 23,
	\ 'mediumcyan'     : 117,
	\
	\ 'darkestblue'    : 24,
	\ 'darkblue'       : 31,
  \ 'blue'           : 33,
  \ 'fullblue'       : 21,
	\
  \ 'cyan'           : 87,
  \ 'lightcyan'      : 159,
  \
  \ 'highlightcyan'  : 195,
  \ 'highlightgreen' : 194,
  \
  \ 'bluepurple'     : 111,
  \
  \ 'azure'          : 81,
  \ 'mauve'          : 147,
  \ 'lavender'       : 141,
  \ 'amethyst'       : 135,
  \
  \ 'violet'         : 93,
  \ 'purple'         : 90,
  \ 'byzantium'      : 89,
  \
	\ 'darkestred'     : 52,
	\ 'darkred'        : 88,
	\ 'mediumred'      : 124,
	\ 'brightred'      : 160,
	\ 'brightestred'   : 196,
	\
	\ 'darkestpurple'  : 55,
	\ 'mediumpurple'   : 98,
	\ 'brightpurple'   : 189,
	\
	\ 'brightorange'   : 208,
	\ 'brightestorange': 214,
	\
	\ 'gray0'          : 233,
	\ 'gray1'          : 235,
	\ 'gray2'          : 236,
	\ 'gray3'          : 239,
	\ 'gray4'          : 240,
	\ 'gray5'          : 241,
	\ 'gray6'          : 244,
	\ 'gray7'          : 245,
	\ 'gray8'          : 247,
	\ 'gray9'          : 250,
	\ 'gray10'         : 252,
  \ 'gray11'         : 253,
  \ 'gray12'         : 254,
  \ 'gray13'         : 255,
	\ })

let g:Powerline#Colorschemes#seysayux_light#colorscheme = Pl#Colorscheme#Init([
      \ Pl#Hi#Segments(['SPLIT'], {
      \ 'n': ['white', 'gray13'],
      \ 'N': ['white', 'gray10'],
      \ 'i': ['white', 'highlightcyan'],
      \ }),
      \
      \ Pl#Hi#Segments(['mode_indicator'], {
      \ 'n': ['darkestgreen', 'brightgreen', ['bold']],
      \ 'i': ['darkestcyan', 'white', ['bold']],
      \ 'v': ['darkred', 'brightorange', ['bold']],
      \ 'r': ['white', 'brightred', ['bold']],
      \ 's': ['white', 'gray5', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['branch', 'scrollpercent', 'raw', 'filesize'], {
      \ 'n': ['gray1', 'gray9'],
      \ 'N': ['gray11', 'gray7'],
      \ 'i': ['fullblue', 'bluepurple'],
      \ }),
      \
      \ Pl#Hi#Segments(['fileinfo', 'filename'], {
      \ 'n': ['black', 'gray10', ['bold']],
      \ 'N': ['gray10', 'gray7', ['bold']],
      \ 'i': ['darkestblue', 'mediumcyan', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['fileinfo.filepath'], {
      \ 'n': ['gray11'],
      \ 'N': ['gray11'],
      \ 'i': ['mediumcyan'],
      \ }),
      \
      \ Pl#Hi#Segments(['static_str'], {
      \ 'n': ['white', 'gray4'],
      \ 'N': ['gray11', 'gray3'],
      \ 'i': ['white', 'darkblue'],
      \ }),
      \
      \ Pl#Hi#Segments(['fileinfo.flags'], {
      \ 'n': ['brightestred', ['bold']],
      \ 'N': ['darkred'],
      \ 'i': ['brightestred', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['currenttag', 'fullcurrenttag', 'fileformat', 'fileencoding', 'pwd', 'filetype', 'rvm:string', 'rvm:statusline', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
      \ 'n': ['gray2', 'gray11'],
      \ 'i': ['darkestblue', 'mediumcyan'],
      \ }),
      \
      \ Pl#Hi#Segments(['lineinfo'], {
      \ 'n': ['black', 'gray8', ['bold']],
      \ 'N': ['gray7', 'gray1', ['bold']],
      \ 'i': ['white', 'blue', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['errors'], {
      \ 'n': ['brightestorange', 'gray2', ['bold']],
      \ 'i': ['brightestorange', 'darkestblue', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['lineinfo.line.tot'], {
      \ 'n': ['black'],
      \ 'N': ['gray5'],
      \ 'i': ['white'],
      \ }),
      \
      \ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
      \ 'n': ['white', 'brightred', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['gundo:static_str.name', 'command_t:static_str.name'], {
      \ 'n': ['white', 'mediumred', ['bold']],
      \ 'N': ['brightred', 'darkestred', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['gundo:static_str.buffer', 'command_t:raw.line'], {
      \ 'n': ['white', 'darkred'],
      \ 'N': ['brightred', 'darkestred'],
      \ }),
      \
      \ Pl#Hi#Segments(['gundo:SPLIT', 'command_t:SPLIT'], {
      \ 'n': ['white', 'darkred'],
      \ 'N': ['white', 'darkestred'],
      \ }),
      \
      \ Pl#Hi#Segments(['lustyexplorer:static_str.name', 'nerdtree:raw.name', 'tagbar:static_str.name'], {
      \ 'n': ['white', 'gray4', ['bold']],
      \ 'N': ['gray11', 'gray3', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['minibufexplorer:static_str.name'], {
      \ 'n': ['gray12', 'gray12']
      \ }),
      \
      \ Pl#Hi#Segments(['lustyexplorer:static_str.buffer', 'tagbar:static_str.buffer'], {
      \ 'n': ['white', 'gray4'],
      \ 'N': ['gray11', 'gray3'],
      \ }),
      \
      \ Pl#Hi#Segments(['lustyexplorer:SPLIT', 'nerdtree:SPLIT', 'tagbar:SPLIT'], {
      \ 'n': ['white', 'gray4'],
      \ 'N': ['gray11', 'gray3'],
      \ }),
      \
      \ Pl#Hi#Segments(['ctrlp:focus', 'ctrlp:byfname'], {
      \ 'n': ['brightpurple', 'darkestpurple'],
      \ }),
      \
      \ Pl#Hi#Segments(['minibufexplorer:SPLIT'], {
      \ 'n': ['gray12', 'gray12']
      \ }),
      \
      \ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next', 'ctrlp:pwd'], {
      \ 'n': ['white', 'mediumpurple'],
      \ }),
      \
      \ Pl#Hi#Segments(['ctrlp:item'], {
      \ 'n': ['darkestpurple', 'white', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['ctrlp:marked'], {
      \ 'n': ['brightestred', 'darkestpurple', ['bold']],
      \ }),
      \
      \ Pl#Hi#Segments(['ctrlp:count'], {
      \ 'n': ['darkestpurple', 'white'],
      \ }),
      \
      \ Pl#Hi#Segments(['ctrlp:SPLIT'], {
      \ 'n': ['white', 'darkestpurple'],
      \ }),
      \ ])
