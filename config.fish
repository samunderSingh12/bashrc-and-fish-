if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Set custom colors
set -g fish_color_command blue
set -g fish_color_param cyan
set -g fish_color_error red
set -g fish_color_operator yellow
# Define a simple yet informative prompt
function fish_prompt
    set_color brblue
    echo -n (prompt_pwd)
    set_color yellow
    echo -n ' ❯ '
    set_color normal
end
# Optional: Add git branch to right prompt
function fish_right_prompt
    set_color green
    printf '%s' (fish_git_prompt)
    set_color normal
end
# Remove the default mode prompt (the green box with "I")
function fish_mode_prompt
end
# Custom color scheme for syntax highlighting
set -g fish_color_autosuggestion 555 brblack
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow --bold
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow '--background=brblack'
set -g fish_color_selection white --bold '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline
# Aliases
alias update='sudo apt update && sudo apt upgrade -y'
alias ports='netstat -tulanp'
alias mem='free -m -l -t'
alias hf='history | fzf'
alias cr='clear'
alias pp='cd /home/abhiennui/impBOX/dmenu/mydmenus && ./run_pyth.sh'
alias fc='fzf'

# New: Directory listing aliases (colorful if exa is available)
if type -q exa
    alias ls='exa --icons'
    alias ll='exa -l --icons'
    alias la='exa -la --icons'
else
    alias ll='ls -lh'
    alias la='ls -lah'
end
# New: Simple greeting function
function fish_greeting
    echo "Welcome to Fish! Current time: "(date +%H:%M:%S)
end
# New: Add visual separator between commands
function postexec --on-event fish_postexec
    echo
    set_color 555
    echo "────────────────────────────────────────────────"
    set_color normal
    echo
end

#. /home/abhiennui/.config/fish/functions/z.fish
abbr gcm 'git commit -m'
abbr gco 'git checkout'
abbr glg 'git log --oneline --graph'
abbr is 'sudo apt install'
