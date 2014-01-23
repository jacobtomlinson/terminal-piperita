#Piperita Terminal Theme

The [Piperita](http://www.jacobtomlinson.co.uk/2013/10/17/mac-os-x-terminal-theme-piperita/) terminal theme, based on [Peppermint](http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/) by [Noah Frederick](http://noahfrederick.com/).

![alt text](http://www.jacobtomlinson.co.uk/wp-content/uploads/2013/10/terminal.png "Piperita")

__Features__
* Soft colour scheme by Noah Frederick
* Prompt separated by colours
* User identifier changes colour depending on command return code
* Username changes colour based on whether superuser or not
* Displays current branch and status when in a git controlled directory

Themes are available for
* Terminal.app (OS X Default)
* [iTerm 2](http://www.iterm2.com/)

##Installation

This theme comes in two parts. The first is the terminal theme which sets the default color palette, transparency, font, size and title settings of your terminal window. The second is a bash profile, this creates some aliases and sets the layout and colors for the command line itself.

###1. Theme

####Terminal.app
Clone the repository or download the zip and extract it on your OS X machine. Navigate to the directory for the terminal you're using and double-click the theme file to install the theme in the terminal application.

####iTerm 2
iTerm 2 is a little trickier as it doesn't have an import/export method for profiles. However you can export and import a colour scheme on its own. You will then need to configure the font, opacity and terminal size manually.

To import the colour scheme download the files as above and double-click the scheme file. Then open up iTerm 2's Preferences > Profiles and add a new profile. Select the Colors menu and select Piperita from the "Load Presets..." dropdown.

![alt text](http://www.jacobtomlinson.co.uk/wp-content/uploads/2013/10/Screen-Shot-2013-10-17-at-18.12.31-1024x770.png "iTerm 2 Color Menu")

Then in the text menu change to font size to 14 and the family to Monaco if not set already

![alt text](http://www.jacobtomlinson.co.uk/wp-content/uploads/2013/10/Screen-Shot-2013-10-17-at-18.13.21.png "iTerm 2 Font Menu")

Finally in the windows menu move the transparency slider to around 30%, tick the blur option and set it to around 80% and then set the columns to whatever you fancy, for me on a 1680x1050 resolution screen 103 gives you half the width.

![alt text](http://www.jacobtomlinson.co.uk/wp-content/uploads/2013/10/Screen-Shot-2013-10-17-at-18.13.01.png "iTerm 2 Window Menu")

###2. Bash Profile
Copy the contents of `.profile` to your `.profile` or copy the whole thing if you don't have a `.profile`. The easiest way to do this is to navigate to where you downloaded the repo in your terminal and run

```
cat .profile >> ~/.profile
```

This will append your .profile if it exists or create it if it doesn't.

__What does .profile do?__

So you may be asking what your `.profile` does. Well your `.profile`, along with other files such as `.bashrc` and `.bash_profile` depending on your operating system, are scripts which are run when you open a terminal or tty. They are used to define some variables and aliases to make life easier without having to define them every time.

If you have a look at the `.profile` included in this theme you will see some aliases to ls, the first being ls itself but with a couple of options which tells it to use color mode. There are more aliases for `ls` such as `ll` or `la` which are just shortcuts for `ls -l` and `ls -la` respectively. There are also some variables set which define colors to be used.

The main part of this `.profile` which defines the theme is the definition of the variable `PS1` which is the format and colors for the prompt itself. The two main things which adds functionality are the if statements which change colors in the prompt based on what is happening. One checks to see if the pervious command failed and if so it changes the prompt's last character (usually a $) to be red. The other checks to see if the user is root, you really should avoid using the root user as it has a lot of power and you can easily mess things up, however sometimes you need to use the root user so the prompt changes the username to red if you're root just to make you extra aware you're in a risky position.

![alt text](http://www.jacobtomlinson.co.uk/wp-content/uploads/2013/10/rootprompt.png "Root Prompt")

###3. Vim Profile (Optional)
I've also included a vim profie `.vimrc`. This is just a config file to set some default behaviour for the command line text editor vim. Currently this just tells vim to use syntax highlighting. You may install it with the command.

```
cat .vimrc >> ~/.vimrc
```

##Uninstallation

To remove Piperita first navigate to Preferences in the terminal application and remove the theme using the minus button. Then edit your `.profile` and remove the block starting `### Start Piperita Theme ###` and ending `### End Piperita Theme ###`.

__Tip__: You can quickly edit your `.profile` in Text Edit using the command

```
Open /Applications/TextEdit.app ~/.profile
```
