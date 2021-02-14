#!/bin/bash

# -h -> display help message
# add or no argument -> add a new ticket
# close <filename> -> close a ticket
# edit <filename> -> edit a ticket
# list -c --closed -> list closed tickets
# list -o --open -> list open tickets
# list -l --label <label> -> list tickets with given label
# list -a --author <author> -> list tickets with given author

while getopts ":h" opt
do
    case ${opt} in
        h) 
            echo "Usage:"
            echo "  ticket -h                   Display this help message."
            echo "  ticket                      Add a new ticket."
            echo "  ticket add                  Also add a new ticket."
            echo "  ticket close <ticket_id>    Set <ticket_id> as closed."
            echo "  ticket edit <ticket_id>     Open <ticket_id> in text editor."
            echo "  ticket list                 List all tickets."
            echo "  ticket list -o              List all open tickets."
            echo "  ticket list -c              List all closed tickets."
            echo "  ticket list -l <label>      List all tickets with label <label>."
            echo "  ticket list -a <author>    List all tickets with author <author>."
            echo "  All commands must be called in a git repository."
            exit 0
            ;;
        \?)
            echo "Invalid option: -$OPTARG" 1>&2
            exit 1
            ;;
    esac
done
shift $((OPTIND -1))

