# The four functions below do most of what a 'platform' like OhMyZsh does, but feels a lot less bloated
function zsh_add_file() {
    [ -f "$DOTFILES/$1" ] && source "$DOTFILES/$1"
}

function zsh_add_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$DOTFILES/plugins/$PLUGIN_NAME" ]; then
        # For plugins
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$DOTFILES/plugins/$PLUGIN_NAME"
    fi
}

function zsh_add_local_plugin() {
    PLUGIN_NAME=$1
    zsh_add_file "local-plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
    zsh_add_file "local-plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
}

function zsh_add_completion() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$DOTFILES/plugins/$PLUGIN_NAME" ]; then
        # For completions
		completion_file_path=$(ls $DOTFILES/plugins/$PLUGIN_NAME/_*)
		fpath+="$(dirname "${completion_file_path}")"
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh"
    else
        git clone "https://github.com/$1.git" "$DOTFILES/plugins/$PLUGIN_NAME"
		fpath+=$(ls $DOTFILES/plugins/$PLUGIN_NAME/_*)
        [ -f $DOTFILES/.zccompdump ] && $DOTFILES/.zccompdump
    fi
	completion_file="$(basename "${completion_file_path}")"
	if [ "$2" = true ] && compinit "${completion_file:1}"
}

function mkcd() {
    mkdir -p "$1" && cd "$1";
}
