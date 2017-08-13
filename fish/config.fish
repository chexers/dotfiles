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

set -xg PATH $HOME/.local/bin $HOME/.gem/ruby/2.4.0/bin $PATH

if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end

function hybrid_bindings --description "Vi-style bindings that inherit"
    for mode in default insert visual
        fish_default_key_bindings -M $mode
    end
    fish_vi_key_bindings --no-erase
end
set -g fish_key_bindings hybrid_bindings
fish_vi_kdy_bindings insert
