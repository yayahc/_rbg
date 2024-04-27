#!/bin/bash
dart pub global activate --source path .rbg
chmod +x .rbg/run.sh && chmod +x .rbg/uninstall.sh
echo Done