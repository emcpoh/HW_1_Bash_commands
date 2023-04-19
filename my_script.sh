#!/bin/bash

# Пункт 3: Зайти в папку
cd dir_1

# Пункт 4: Создать 3 папки
mkdir dir_11 dir_12 dir_13

# Пункт 5: Зайти в любую папку
cd dir_11

# Пункт 6: Создать 5 файлов (3 txt, 2 json)
touch file1.txt file2.txt file3.txt file4.json file5.json

# Пункт 7: Создать 3 папки
mkdir dir_21 dir_22 dir_23

# Пункт 8: Вывести список содержимого папки
ls -la

# Пункт 13: переместить любые 2 файла, которые вы создали, в любую другую папку.
mv file1.txt file2.txt dir_21