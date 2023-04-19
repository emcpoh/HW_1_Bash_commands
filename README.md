# HW_1_Bash_commands #
Here are the results of my first homework.

# First part of the first task: #
## 1. Check the current directory ##
You neew to use `pwd` command to check your current directory

    kapli@mcpoh MINGW64 ~/Desktop
    $ pwd
    /c/Users/kapli/Desktop
## 2. Create new folder ##

    kapli@mcpoh MINGW64 ~/Desktop
    $ mkdir dir_1
## 3. Go to the created folder

    kapli@mcpoh MINGW64 ~/Desktop
    $ cd dir_1
## 4. Create 3 new folders

    kapli@mcpoh MINGW64 ~/Desktop/dir_1
    $ mkdir dir_2 dir_3 dir_4
## 5. Go to any folder

    kapli@mcpoh MINGW64 ~/Desktop/dir_1
    $ cd dir_2
## 6. Create 5 new files (3 .txt, 2.json)

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ touch file_1.txt file_2.txt file_3.txt file_4.json file_5.json
## 7. Create 3 new folders

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ mkdir dir_5 dir_6 dir_7
## 8. Output a list of folder contents

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ ls -la
    total 4
    drwxr-xr-x 1 kapli 197609 0 Apr 18 21:02 ./
    drwxr-xr-x 1 kapli 197609 0 Apr 18 20:59 ../
    drwxr-xr-x 1 kapli 197609 0 Apr 18 21:02 dir_5/
    drwxr-xr-x 1 kapli 197609 0 Apr 18 21:02 dir_6/
    drwxr-xr-x 1 kapli 197609 0 Apr 18 21:02 dir_7/
    -rw-r--r-- 1 kapli 197609 0 Apr 18 21:01 file_1.txt
    -rw-r--r-- 1 kapli 197609 0 Apr 18 21:01 file_2.txt
    -rw-r--r-- 1 kapli 197609 0 Apr 18 21:01 file_3.txt
    -rw-r--r-- 1 kapli 197609 0 Apr 18 21:01 file_4.json
    -rw-r--r-- 1 kapli 197609 0 Apr 18 21:01 file_5.json
## 9. Open any .txt file

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ vim file_1.txt
## 10. Write any text to an open file
You need to tap `i` to *insert* new text in a file with a `vim` command.
In this example I just add the characters 1 to 30 each on a new line.
## 11. Save file and close it.
You need to tap the `Esc` button and then print this command: `:wq`. That's all, your file has been saved and closed.
## 12. Go to the parent directory
    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ cd ..
## 13. Move any 2 files to any other folder

    kapli@mcpoh MINGW64 ~/Desktop/dir_1
    $ mv dir_2/file_1.txt dir_2/file_2.txt dir_3
## 14. Copy any 2 files to any other folder

    kapli@mcpoh MINGW64 ~/Desktop/dir_1
    $ cp dir_3/file_1.txt dir_3/file_2.txt dir_2
## 15. Find a file by its name

    kapli@mcpoh MINGW64 ~/Desktop/dir_1
    $ find -name file_5.json
    ./dir_2/file_5.json
## 16. View the contents of the file in real time
First let's check the full content of file_1.txt:

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ cat file_1.txt
    1
    2
    3
    4
    .
    .
    .
    25
    26
    27
    28
    29
    30
So let's use the `tail` and `grep` command together

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ tail -f file_1.txt | grep '2'
    21
    22
    23
    24
    25
    26
    27
    28
    29
If file_1.txt will be updated by new data, we will see the updates in our terminal.
For example, i add '31', '32' and '33' in file_1.txt.
Then, I save and close it.
The updates in terminal:

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ tail -f file_1.txt | grep '2'
    21
    22
    23
    24
    25
    26
    27
    28
    29
    32
After this you neew use `Ctrl` + `C` command to exit the `tail`'s command updates.

How we can see, only the '32' has been added, because of the `grep` command.
## 17. Output the first few lines from a text file

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ head file_1.txt
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
## 18. Output the last few lines from a text file
How you can see below, the '31'and '33' also been in file_1.txt, but we couldn't see it because of the `grep` command.

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ tail file_1.txt
    24
    25
    26
    27
    28
    29
    30
    31
    32
    33
## 19. View the contents of a large file
First, you need to initiate the `less` command:

    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ less file_1.txt
Then you can use arrows `←, →, ↑, ↓` to navigate in the file.
Then you need to *quit* the file, press `q` button.
## 20. Show current date and time
    kapli@mcpoh MINGW64 ~/Desktop/dir_1/dir_2
    $ date
    Tue Apr 18 22:13:35 RTZ 2023
## 1*. Send an http request to the server
By deafult, the curl command used for send the `GET` request.

        kapli@mcpoh MINGW64 ~/Desktop/dir_1
        $ curl http://162.55.220.72:5005/terminal-hw-request
        % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                         Dload  Upload   Total   Spent    Left  Speed
        100   232  100   232    0     0   1850      0 --:--:-- --:--:-- --:--:--  1856<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
        <title>404 Not Found</title>
        <h1>Not Found</h1>
        <p>The requested URL was not found on the server. If you entered the URL manually please check your spelling and try again.</p>
## 2*. Write a script that will automatically execute the steps 3, 4, 5, 6, 7, 8, 13.
You can find my script [here](https://github.com/emcpoh/HW_1_Bash_commands/blob/main/my_script.sh "My script is located here")
The result of script work:

        kapli@mcpoh MINGW64 ~/Desktop
        $ ./my_script.sh
        total 4
        drwxr-xr-x 1 kapli 197609 0 Apr 19 20:21 .
        drwxr-xr-x 1 kapli 197609 0 Apr 19 20:21 ..
        drwxr-xr-x 1 kapli 197609 0 Apr 19 20:21 dir_21
        drwxr-xr-x 1 kapli 197609 0 Apr 19 20:21 dir_22
        drwxr-xr-x 1 kapli 197609 0 Apr 19 20:21 dir_23
        -rw-r--r-- 1 kapli 197609 0 Apr 19 20:21 file1.txt
        -rw-r--r-- 1 kapli 197609 0 Apr 19 20:21 file2.txt
        -rw-r--r-- 1 kapli 197609 0 Apr 19 20:21 file3.txt
        -rw-r--r-- 1 kapli 197609 0 Apr 19 20:21 file4.json
        -rw-r--r-- 1 kapli 197609 0 Apr 19 20:21 file5.json
