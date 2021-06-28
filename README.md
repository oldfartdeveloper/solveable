# Solveable Solitaire

The Klondike card game that is always solveable at selectable difficulty levels.

## Status

This is in a very early stage of development in **Haskell**.  Hence, at this time the command(s) available will be described so that you can try them for yourself.

To run the current command (after installing as described below):

```zsh
cabal new-run solveable
```

## Present Feature Status

When you run this as an executable, you are asked for a card number from 1 to 52, and it will draw you what the card will look like in the game.

## Installation

First, install Haskell, then clone and build the game.

### Install Haskell tooling

I am only developing this to run on **MacOs Catalina** and you should choose your target appropriately **[here](https://www.haskell.org/downloads/)**.
My installation uses thse **[instructions](https://www.haskell.org/ghcup/)**. *Note: installation took about 10 minutes on my year-old iMac; YMMV.*

Follow the instructions here (MacOS specific):

1. Open a  **terminal** or **iTerm** window and `cd` into a (newly created if needed) empty folder.
1. Run `curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`.
1. Read the response in which it tells you what it's going to install.  Continue by clicking ENTER or else ctrl-c to abort.
1. Mine installed version 8.10.5 which is fine for now.
1. The installer will ask you if you want to install the **haskell-language-server** (HLS); answer **Y**.
1. The installer will ask you if you want to install **stack**; answer **Y**.
1. The installer will ask you if you want to add the required PATH variable to your shell script (`bash` or `zsh`); answer **Y**.
1. The installation completes by returning control to your terminal.

My installation completed (including taking the time to answer the questions noted above) after about 10 minutes.

### Install Solitaire program

1. `cd` to your projects folder.
1. Open a terminal to clone, build, and run `solveable` as follows:

    ```zsh
    git clone https://github.com/oldfartdeveloper/solveable.git
    cd solveable
    cabal v2-build
    ```

1. Run `solveable` as follows, then follow its instructions:

    ```zsh
    cabal v2-run solveable
    ```

Note that it is at very early stages; working out rendering the card game.

A group of us, all of us proficient and/or interested in functional programming, meet weekly online at 7:00-9:00 PM Pacific Time to work on pet projects.  Join us at our **[meetup](https://www.meetup.com/orange-combinator/)**; we learn a lot.  Lurkers are welcome. 😉
