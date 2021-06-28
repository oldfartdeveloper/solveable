# Solveable Solitaire

The Klondike card game that is always solveable at selectable difficulty levels.

## Status

This is in early stages of development.  Hence, right now the command(s) available will be described so that you can try them for yourself.

To run the current command:

```zsh
cabal new-run solveable
```

TODO: deploy to GitHub as an executable so that you can just type `solveable`.

## Present Status

When you run this as an executable, you are asked for a card number from 1 to 52, and it will draw you what the card will look like in the game.

## Installation

### Install Haskell tooling

I am only developing this to run on **MacOs Catalina** and you should choose your target appropriately **[here](https://www.haskell.org/downloads/)**.
My installation uses thse **[instructions](https://www.haskell.org/ghcup/)**. *Note: this took about 10 minutes on my year-old iMac; YMMV.*

Follow the instructions here (MacOS specific):

1. Open a  **terminal** or **iTerm** window and `cd` into a (newly created if needed) empty folder.
1. Run `curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`.
1. Read the response in which it tells you what it's going to install.  Continue by clicking ENTER or ctrl-c to abort.
1. It installed version 8.10.5 which is fine for now.
1. The installer will ask you if you want to install the **haskell-language-server** (HLS); answer **Y**.
1. The installer will ask you if you want to install **stack**; answer **Y**.
1. The installer will ask you if you want to add the required PATH variable to your shell script (`bash` or `zsh`); answer **Y**

After about 10 minutes, it completed (including taking the time to answer the questions).

### Install Solitaire program
