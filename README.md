#Piperita Terminal Theme

The [Piperita](http://www.jacobtomlinson.co.uk/2013/10/17/mac-os-x-terminal-theme-piperita/) terminal theme.

![alt text](http://www.jacobtomlinson.co.uk/wp-content/uploads/2013/10/terminal.png "Piperita")

###Features
* Soft colour scheme by [Noah Frederick](http://noahfrederick.com/) called [Peppermint](http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/)
* Prompt separated by colours
* User identifier changes colour depending on command return code
* Username changes colour based on whether superuser or not
* Displays current branch and status when in a git controlled directory

####Colour scheme is available for
* Terminal.app (OS X Default)
* [iTerm 2](http://www.iterm2.com/)

####Feedback
I __love__ feedback. Find me on twitter, [@_jacobtomlinson](https://www.twitter.com/_jacobtomlinson), and tell me what you think about piperita!

##Installation

This theme comes in three parts.

 1. **Terminal theme** - this sets the default color palette, transparency, font, size and title settings of your terminal window.

 1. **Bash profile** - this creates some aliases and sets the layout and colours for the command line prompt.

 1. **Additional profiles** *(Optional)* - extra config for other applications such as `git` and `vim` to make them prettier or more usable.


###1. Theme
Each supported terminal application has a subdirectory in the `Schemes` directory. See the `INSTALL.md` in each subdirectory for installation instructions.

###2. Bash Profile
For those that don't know, your bash profile is a script which runs every time you open a terminal session.
This is used to set custom config for that session.

There are a few different types of profile `.bashrc`, `.bash_profile` and `.profile` to name a few.
Usually you'll be after the `.bashrc` so for now we'll assume we're working with that (I am).

For more info about the different profiles and when they're used see [this stackoverflow article](http://stackoverflow.com/questions/415403/whats-the-difference-between-bashrc-bash-profile-and-environment).

We'll go through two methods for installing this profile, a simple one and then a more complex one which I use.

####Simple
Copy the contents of `Bash/.bashrc.d/piperita` into your `.bashrc` file.

To do this quickly with the terminal :
```bash
cd /where/you/downloaded/this/repository
cat Bash/.bashrc.d/piperita >> ~/.bashrc
```

This will append your `.bashrc` (or create it if it doesn't exist) with the contents of this theme.

####More Complex
I like to create a `.bashrc.d` directory in my home directory and place my scripts in there.
I then have a simple `.bashrc` file which just includes all the files in that directory.

This way I can have specific aliases for different projects or environments in their own file without having to modify my `.bashrc` or the `piperita` theme.
I just create a new file in `.bashrc.d` and put my extra config in there.


```bash
cd /where/you/downloaded/this/reposirtory
cp -R Bash/.bashrc.d ~/.

# If you already have a .bashrc file do this next step, if not don't worry.
# This will move your existing .bashrc into .bashrc.d and name it `original`
mv ~/.bashrc ~/.bashrc.d/original

cp Bash/.bashrc ~/.
```

![alt text](http://www.jacobtomlinson.co.uk/wp-content/uploads/2013/10/rootprompt.png "Root Prompt")

###3. Additional Profiles (Optional)
I've also included profiles I use for additional applications. Each config file will be in a subfolder within `Additional` and will have an `INSTALL.md` file explaining what to do with it.
However most will just require you to copy the config file into your home directory or into `.bashrc.d`.

#### Example - vim
```bash
cd /where/you/downloaded/this/reposirtory
cat Additional/vim/.vimrc >> ~/.vimrc
```

##Uninstallation

Edit your `.bashrc`, `.vimrc` and any other config files you've used and remove the block starting `### Start Piperita Theme ###` and ending `### End Piperita Theme ###`.

__Tip__: You can quickly edit your `.bashrc` in Text Edit using the command

```bash
Open /Applications/TextEdit.app ~/.bashrc
```

## Disclaimer
This is how I like my terminal. Decisions about colours, layout, fonts and features are often influenced by my current project, whatever that may be. Things will change to suit my needs, this repository is to allow me to quickly put my preferred settings on a new machine as well as share it with others.

Features will come and go as I see fit, I will do my best to tag a release before making a major change to allow others to stick with a version they like. I may even make this more modular in future to allow for turning on different options.
