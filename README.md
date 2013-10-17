#Piperita Terminal Theme

The [Piperita](http://www.jacobtomlinson.co.uk/2013/10/17/mac-os-x-terminal-theme-piperita/) terminal theme, based on [Peppermint](http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/) by [Noah Frederick](http://noahfrederick.com/).

![alt text](http://www.jacobtomlinson.co.uk/wp-content/uploads/2013/10/terminal.png "Piperita")

Terminals available for
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

##Uninstallation

To remove Piperita first navigate to Preferences in the terminal application and remove the theme using the minus button. Then edit your `.profile` and remove the block starting `### Start Piperita Theme ###` and ending `### End Piperita Theme ###`.

__Tip__: You can quickly edit your `.profile` in Text Edit using the command

```
Open /Applications/TextEdit.app ~/.profile
```
