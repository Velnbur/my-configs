# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

PROMPT='%1 [%F{#FF7C00}%n%F{green}@%F{blue}%m%f %F{33FF2A}%B%1d%b%f]%F{green}${vcs_info_msg_0_}%f%F{#FF7C00}$%f '
