function add () {
  export PATH=$1:$PATH
}

add $HOME/bin/
add $HOME/.cabal/bin
add $HOME/.rbenv/versions/1.9.3-p0/bin
add /usr/local/share/npm/bin
add /usr/local/bin
add /usr/local/sbin

add /Applications/MAMP/Library/bin:/Applications/MAMP/bin
add /Applications/MAMP/bin/php/php5.3.6/bin
add /usr/local/heroku/bin
add $GOPATH/bin
add $HOME/.composer/vendor/bin
add /Applications/Visual Studio Code.app/Contents/Resources/app/bin
