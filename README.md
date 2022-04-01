# ticket
Simple, distributed, plain text files ticket system working with git.

All tickets are stored in a `tickets` directory at repository’s top level.

You can commit your tickets as any other file.

## Installation

####Clone repository
```
git clone https://github.com/Fenykepy/ticket.git
cd ticket
```

#### Choose your system

For mac os:
```
git checkout master_macos
```

For linux:
```
git checkout master
```

Copy `ticket` file somewhere in your `$PATH`.


## Usage

#### Get some help
```
$ ticket -h
```

#### Show programm version
```
$ ticket -v
```

#### Add a new ticket
```
$ ticket
```

or

```
$ ticket add
```
You’ll be promped for a title, a description and a label.

Author is automatically grabed from git config.

This command must be run inside a git repository.

#### Close a ticket
```
$ ticket close <path_to_ticket_file>
```

#### Reopen a previously closed ticket
```
$ ticket open <path_to_ticket_file>
```

#### Open a ticket in default text editor
```
$ ticket edit <path_to_ticket_file>
```
#### List tickets
All:
```
$ ticket list
```

Status open:
```
$ ticket list -o
```

Status closed:
```
$ ticket list -c
```

Label `bug`:
```
$ ticket list -l bug
```

Filter by author:
```
$ ticket list -a author@domain.com
```

Mix options together:
```
$ ticket list -s open -l documentation -a author@domain.com
```

## Configuration

Ticket will search for a configuration file `.ticket.conf` on git repository’s top level.

 `.ticket.conf` example:

```bash
#/bin/bash


#####################################
###   ticket configuration file   ###
#####################################

## Directory where tickets will be stored
## Trailing slash "/" is required
## relative to git top level directory
## default to "tickets/"
DIRECTORY="tickets/"

## Array of strings to be used as labels
## default to ("bug" "enhancement" "documentation" "duplicate")
LABELS=("bug" "enhancement" "documentation" "duplicate")
```
