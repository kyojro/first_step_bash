
#This is my first bash script.

Description:
Write and push a bash script to github.
Create a file environments.txt, where
all long lines will be placed as variables 
that should be passed to the script.

Task:
1. download all files with .json extension from directory.
2. In one of the files there is a line 'user_agent' you need.
to get this value, display it on the screen and pass it to a variable.
3. Archive the existing json files into a .tgz archive whose name
will be the value from user_agent.
4. Make MD5 for this archive.
5. Archive and MD5 push to github.
