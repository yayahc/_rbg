#!/bin/bash
dart pub global activate --source path .rbg
chmod +x .rbg/run.sh 
chmod +x .rbg/uninstall.sh
alias trbg="./run.sh"
echo 'alias trbg="./run.sh" created'