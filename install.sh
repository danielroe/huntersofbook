#!/bin/bash
cd scripts
echo "pnpm tsx $1 $2"
if [ $1 == "install" ]
then
    pnpm tsx install.ts
    echo "install"
elif [ $1 == 'lint' ]
then
    pnpm tsx lint.ts
    echo "lint"
elif [ $1 == 'lint:fix' ]
then
    pnpm tsx lint.ts lint:fix
    echo "lint"
else
    pnpm tsx install.ts $1 $2
    echo "else"
fi
