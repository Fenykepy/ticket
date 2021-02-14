#!/bin/bash

function close_ticket { #$1 is ticket path
    if [ -z "$1" ]
    then
        echo "You must specified a ticket path."
        exit 1
    elif [ ! -e "$1" ]
    then
        echo "No such ticket file $1."
        exit 0
    fi
    echo "Close ticket"
}


## Parse options of `ticket` command
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




subcommand=$1
shift # remove `ticket` from list


## if we have no subcommand
if [ -z "$subcommand" ]
then
    echo "Add a new ticket"
    exit 0
fi


## Parse subcommand
case "$subcommand" in
    add)
        echo "Add a new ticket"
        ;;

    close)
        close_ticket $1
        shift # remove `close` from list
        ;;

    edit)
        echo "Edit ticket"
        ;;

    list)
        echo "List tickets"
        ;; 
esac

