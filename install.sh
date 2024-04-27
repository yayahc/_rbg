#!/bin/bash
dart pub global activate --source path .
chmod +x .rbg/run.sh && chmod +x .rbg/uninstall.sh
alias trbg="./run.sh"