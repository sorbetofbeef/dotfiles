function nx --description 'Removes file extension'
  fd --type file * $argv | sed -e 's/*\.///p'
end
