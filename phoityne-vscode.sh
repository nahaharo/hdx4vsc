#!/bin/sh

export HDA_PATH=`which haskell-debug-adapter`

if [ "X" != "X$HDA_PATH" ]; then
  haskell-debug-adapter
else
  echo -e "Content-Length: 194\r\n\r"
  echo '{"command":"initialize","success":false,"request_seq":1,"seq":1,"type":"response","message":"phoityne-vscode is not found. Run `stack install phoityne-vscode`, and put it to PATH environment."}'

  exit 1
fi

