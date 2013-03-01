# Add any aliases or exports. The *.local files can be used for machine-
# specific settings not checked into Git.

for dotfile in aliases exports; do
  file="$HOME/.$dotfile"
  [ -e "$file" ] && source "$file"
  [ -e "${file}.local" ] && source "${file}.local"
done

source /usr/local/bin/virtualenvwrapper.sh