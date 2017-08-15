# === Abbreviations
#       generic
abbr -a gs git   status
abbr -a ai apt   install -y 
abbr -a as apt   search 

#       service management
abbr -a start    sudo systemctl start
abbr -a status   sudo systemctl status
abbr -a restart  sudo systemctl restart
abbr -a stop     sudo systemctl stop

#       root-only
abbr -a gem      sudo gem
abbr -a svim     sudo vim
abbr -a iwconfig sudo iwconfig 
abbr -a ifconfig sudo ifconfig 

set -xg EDITOR vim
set -xg SHELL  (which fish)
set -xg PATH $HOME/.config/scripts $HOME/.local/bin $HOME/.gem/ruby/2.4.0/bin $PATH
set -xg fish_greeting hellomoto

if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end
#  
#  set __fish_git_prompt_showdirtystate 'yes'
#  set __fish_git_prompt_showstashstate 'yes'
#  set __fish_git_prompt_showupstream 'yes'
#  set __fish_git_prompt_color_branch yellow
#  
#  # Status Chars
#  set __fish_git_prompt_char_dirtystate '⚡'
#  set __fish_git_prompt_char_stagedstate '→'
#  set __fish_git_prompt_char_stashstate '↩'
#  set __fish_git_prompt_char_upstream_ahead '↑'
#  set __fish_git_prompt_char_upstream_behind '↓'
#   
#  function fish_prompt
#          set last_status $status
#          set_color $fish_color_cwd
#          printf '%s' (prompt_pwd)
#          set_color normal
#          printf '%s ' (__fish_git_prompt)
#         set_color normal
#  end
#  
function !!;
    set prevcmd (history | head -n 1)
    if test "$argv"
    if test "$argv" = "sudo"        #; or "any other command you want to prepend"
        eval "$argv $prevcmd"
    else
        eval "$var $argv"
    end
    else
        eval "$var"
    end
end
#
#
fish_vi_key_bindings insert
