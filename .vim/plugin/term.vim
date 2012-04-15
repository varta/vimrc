" Opens a terminal in the directory of the file.

" Mac OS X
if has("macunix")
    command! Term silent !osascript -e 'tell application "iTerm"' -e 'activate' -e 'set myTerm to make new terminal' -e 'tell myTerm' -e 'launch session "Default Session"' -e 'tell the last session to write text "cd '$(pwd)'\nclear"' -e 'end tell' -e 'end tell'
endif
