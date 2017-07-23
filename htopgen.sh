#!/bin/bash
while true; do 
echo q | htop | aha --stylesheet --black --line-fix | \
  sed 's/<\/style>/body         {overflow-x: hidden;}<\/style>/g' | \
    sed 's/<title>stdin/<title>\/usr\/bin\/htop/g' | \
    sed 's/<\/body>/<script src="\/reload.js"><\/script><\/body>/g' | \
    sed "s/<head>/<head><link rel='shortcut icon' href='favicon.ico' type='image\/x-icon' \/><link rel='stylesheet' href='https:\/\/cdnjs.cloudflare.com\/ajax\/libs\/github-fork-ribbon-css\/0.2.0\/gh-fork-ribbon.min.css\'\/>/g" | \
    sed "s/<body>/<body><a class='github-fork-ribbon' href='https:\/\/github.com\/theden\/0xfee1dead.top' target='_blank' title='Fork me on GitHub'>Fork me on GitHub<\/a>/g" \
    > ./public/htop.html.aux && mv -f ./public/htop.html.aux ./public/htop.html; \
    sleep 2; 
done