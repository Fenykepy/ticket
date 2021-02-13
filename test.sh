#!/bin/bash

directory="tickets/"
mkdir -p $directory

title="test title"
id="testticket"
ticketpath=$directory$id

touch $ticketpath
sed -i "3i\
$title" $ticketpath

