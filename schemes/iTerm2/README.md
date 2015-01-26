##Install for iTerm 2

###Boxen

The piperita colour scheme for iTerm 2 is included in the official [boxen][2] module [puppet-iterm2][1]. 

To install with boxen simply include iTerm 2 and then include the piperita colour scheme.

```
include iterm2::stable
include iterm2::colors::piperita
```

But you'll still need to set the font and transparency/blur manually. See below for details.

###Manual

iTerm 2 doesn't have an import/export method for whole profiles. However you can export and import a colour scheme on its own. You will then need to configure the font, opacity and terminal size manually.

####Colour scheme
 * Download the files if you haven't already
 * Double-click the `Piperita.itermcolors` file to import the colour scheme
 * Open up iTerm 2's `Preferences > Profiles`
 * Add a new profile
 * Select the Colors menu
 * Select Piperita from the `Load Presets...` dropdown

####Font
 * Open the text menu
 * Set the font size to `14`
 * Set the family to `Monaco` (if not set already)

####Transparency/Blur
 * Open the window menu
 * Set the transparency slider to around `30%`
 * Tick the blur option
 * Set the blur to around `80%`
 * Set the columns to whatever you fancy
  * *Note* - For me on a 1680x1050 resolution screen 103 gives you half the width.

[1]:https://github.com/boxen/puppet-iterm2
[2]:https://boxen.github.com/
