
#!/bin/bash

WORK_DIR="$(realpath "$(dirname "$BASH_SOURCE")")"
echo $WORK_DIR

PATH_DIR="$(grep "path" environments.txt | cut -d " " -f 2)"
wget $PATH_DIR -nd -r -A .json
#ls -ll
ARCH_NAME="$(grep "user_agent" ./*.json | cut -d "\"" -f 4 | sed 's/ /_/g')"
echo "ARCHIVE NAME:$ARCH_NAME"

tar cvjf $ARCH_NAME.tgz *.json
md5sum $ARCH_NAME.tgz > $ARCH_NAME.md5
ls -ll


git clone git@github.com:kyojro/first_step_bash.git
mv $ARCH_NAME.tgz $ARCH_NAME.md5 ./first_step_bash/
cd ~/Desktop/task/first_step_bash/
git add $ARCH_NAME.tgz $ARCH_NAME.md5
git commit
git push origin main
echo "End."
