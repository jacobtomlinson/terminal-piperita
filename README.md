#Piperita Terminal Theme

The "Piperita" terminal theme, based on [Peppermint](http://noahfrederick.com/blog/2011/lion-terminal-theme-peppermint/) by [Noah Frederick](http://noahfrederick.com/).

Terminals available for
* Terminal.app (OS X Default)
* iTerm 2

##Installation

This theme comes in two parts. The first is the terminal theme which sets the default color palette, transparency, font, size and title settings of your terminal window. The second is a bash profile, this creates some aliases and sets the layout and colors for the command line itself.     

###1. Terminal Theme
Clone the repository or download the zip and extract it on your OS X machine. Navigate to the directory for the terminal you're using and double-click the theme file to install the theme in the terminal application.

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
