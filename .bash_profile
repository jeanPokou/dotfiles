# Add '~/bin' to the '$PATH'

#Load Shell dotfiles, and path

for file in ~/.{,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file"] && source "$file";
done;
unset file;

# Append to the bash history profile when using 'cd''
shopt -s histappend

# Autocorrect typos in path names when using cd
shopt -s cdscpell


