# ticket
Simple, distributed, plain text files ticket system working with git.

All tickets are stored in a `tickets` directory at repository’s top level.

You can commit your tickets as any other file.

## Installation
Copy `ticket` file somewhere in your `$path`.


## Usage

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
#### List all tickets
```
$ ticket list
```

#### Get some help
```
$ ticket -h
```
