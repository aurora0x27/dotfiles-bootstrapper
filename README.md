# Dotfile bootstrapper

A script helps you to manage dotfiles(or other packages)

## Usage

```
Bootstrap the dotfiles
Usage: ./bootstrap Action <options>

Actions
      install                     Install items
      init                        Initialize items
      uninstall                   Uninstall items

Options:
-p    --preset=<Preset>           Load preset
      --list-presets              List presets
      --item={item1,item2}        Add items to task list
      --exlude={item1,item2}      Remove items from task list
      --id=<sys-id>               Assign sys id to identify system(cover the config)
-n    --dry-run                   Print the steps to be executed
-v    --verbose                   Print the steps while executing
-l    --list                      List all the items
-ls   --list-status               List all the statuses of items
-h    --help                      Print the help menu
-d    --debug                     Set debug mode
-c    --check-dep                 Check the dependency of items
-D    --install-dep               Install the dependency of items

```

## Explainations


- Item

A config or patch to apply

- Preset

A bunch of items which are usually installed together

- $sys_id

A name to identify system or machine, you can set different ways to install items on different machines and OSs


## Examples:

- Init items

```bash
./bootstrap init --item={item1,item2,item3}
```

- Dry run the installation of zsh, bash and fish with full log

```bash
./bootstrap install --items={zsh,bash,fish} -v -n 
```

- Install all the items in preset `linux-basic` and their dependencies

```bash
./bootstrap install --preset=linux-basic -c -D
```
