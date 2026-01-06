#!/bin/sh

rm -rf ZoiteChat.app
rm -f *.app.zip

python $HOME/.local/bin/gtk-mac-bundler zoitechat.bundle

echo "Compressing bundle"
#hdiutil create -format UDBZ -srcdir ZoiteChat.app -quiet ZoiteChat-2.9.6.1-$(git rev-parse --short master).dmg
zip -9rXq ./ZoiteChat-$(git describe --tags).app.zip ./ZoiteChat.app

