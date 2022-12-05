#!/bin/sh

## autoload vcs and colors
autoload -Uz vcs_info
autoload -U colors && colors

# Build the actual prompt
USER="%B%{$fg[green]%}%n@%{$fg[green]%}%m%{$reset_color%}"
FOLDER="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})%{$fg[blue]%}%~%{$reset_color%}"
PROMPT="$USER:$FOLDER$ "

# Right prompt
setopt prompt_subst  # Allow substituting outcome of functions in prompt
RPROMPT='$(git_super_status)'