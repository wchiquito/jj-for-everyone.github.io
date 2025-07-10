#!/usr/bin/env bash
set -euo pipefail

if [ "${1:-x}" = "x" ] ; then
    echo "Please provide the number of your last completed chapter as the first argument."
    exit 1
fi
chapter="$1"

function success() {
    echo "Script completed successfully."
    exit 0
}

rm -rf ~/jj-tutorial
rm -rf ~/jj-tutorial-remote

if [ "$chapter" = 1 ] ; then success ; fi

mkdir ~/jj-tutorial
cd ~/jj-tutorial
jj git init --colocate --quiet

if [ "$chapter" = 2 ] ; then success ; fi

if [ "$chapter" = 3 ] ; then success ; fi

echo "# jj-tutorial" > README.md
jj log -r 'none()' # trigger snapshot

if [ "$chapter" = 4 ] ; then success ; fi

jj describe --quiet --message "Add readme with project title

It's common practice for software projects to include a file called
README.md in the root directory of their source code repository. As the
file extension indicates, the content is usually written in markdown,
where the title of the document is written on the first line with a
prefixed \`#\` symbol.
"

if [ "$chapter" = 5 ] ; then success ; fi

jj new --quiet

if [ "$chapter" = 6 ] ; then success ; fi

mkdir ~/jj-tutorial-remote
cd ~/jj-tutorial-remote
git init --bare --quiet
cd ~/jj-tutorial
jj git remote add origin ~/jj-tutorial-remote
jj bookmark create main --revision @- --quiet
jj git push --bookmark main --quiet
cd ~
rm -rf ~/jj-tutorial
jj git clone --colocate ~/jj-tutorial-remote ~/jj-tutorial --quiet
cd ~/jj-tutorial

if [ "$chapter" = 7 ] ; then success ; fi

printf "\nThis is a toy repository for learning Jujutsu.\n" >> README.md
jj describe -m "Add projcet description to readme" --quiet
jj new --quiet

jj bookmark move main --to @- --quiet

jj git push --quiet

if [ "$chapter" = 8 ] ; then success ; fi

echo "Error: unrecognized chapter."
exit 1
