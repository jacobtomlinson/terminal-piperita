### Piperita Theme ###
# Theme by Jacob Tomlinson
# https://github.com/killfall/terminal-piperita

# Include all files inside ~/.bash_profile.d/
for i in ~/.bashrc.d/* ; do
    if [ -r "$i" ]; then
        . $i
    fi
done

### End Piperita Theme ###
