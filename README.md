# Git Exercises

## Objectives
In this set of exercises we aimed (and still aim) to cover the [most common issues in git](https://stackoverflow.com/questions/tagged/git). We fulfil this by simulating the problems in an environment with you, Ali (your teammate), and a remote repository to make it more similar to what happens in reality.

## Audiences
The primary audiences of this set of exercises are the people who know some basics about Git and who are using it in their projects, but still have some "nasty" problems with it; in other words, the people who do not like Git but they are forced to use it.

## Requirements
You will need a bash like environment to be able to setup and do the problems. If you are using Linux, you should be fine. If you are using macOS, be sure to [install command line tools](http://osxdaily.com/2014/02/12/install-command-line-tools-mac-os-x/).   

If you are Windows user, make sure to [use bash](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/); and maybe, you need to install new command line apps for some of the exercises.   
Obviously, you will need to have `git` command available. For these exercises, version 2.11 seems fine.   

## How to
The exercises are located in `problems` directory. Each exercise has its own `README.md` file. If you have trouble in opening the `.md` files in a pretty way, the most convenient way is to open them on Github. There are some tools to open them online or convert them to PDF files as well.   

In addition to README, each exercise has a `setup.sh` executable Bash script which sets the problem up (it calls `clean.sh` before setting up). And there is a `clean.sh` which cleans the generated exercise files.   

Once the exercise is set up, there will be directory named `repositories`. It will usually have three repositories: `ali_local_repo`, `player_local_repo`, and `remote_repo`. You usually solve the problem on your own computer (`player_local_repo`) not your coworkers' or the server.   

There is also another directory named `user_setup_turns` which contains the instructions to setup the problem. As a problem solver, you don't need to worry about it.   

And finally, each exercise has its own solution (`solution.sh`), which is a Bash script. Once you are done with the problem, checkout the solution and try to understand it. It is intentionally non-executable as the player needs to understand it line by line; also, sometimes it is difficult to suit it to run automatically in any working directory.

## Related Works
The first, primary, and free reference to learn and know about Git is [the Pro-Git book](https://git-scm.com/book).   

There are some interactive Git tutorials out there also, but the [git-game](https://github.com/git-game) is one of the bests in this regard. Although it is fun and beneficial game, we think it still lacks the similarity to real situations.   

For people who are just getting started, [tryGit](https://try.github.io) is recommended. You may get a bit bored when you are doing the challenges, but if you read the advice for each challenge, you will find it awesome.
