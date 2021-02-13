#!/bin/bash

labels=("none" "bug" "enhancement" "documentation")

PS3="Select ticket label: "
select label in "${labels[@]}"
do
    echo "reply: $REPLY"
    echo "arg number: $#"

    if [ 1 -le "$REPLY" ] && [ "$REPLY" -le "${#labels[@]}" ]
    then
        echo "You choosed $label"
        break
    fi
    echo "Wrong selection, try again"
done
