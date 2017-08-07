
abbr -a gs git  status
abbr -a ai sudo apt install -y 
abbr -a as apt  search 

abbr -a start   sudo systemctl start
abbr -a status  sudo systemctl status
abbr -a restart sudo systemctl restart
abbr -a stop    sudo systemctl stop


if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end
