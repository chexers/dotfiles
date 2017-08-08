#vi:ft=fish
#
function pkg
    sudo apt $argv
end

function install
    pkg install -y $argv
end

function search
    pkg search $argv | most
    read -p "Which item(s) do ya wnna install?" TARGET
    echo $TARGET
    echo "-----------"
end

function remove
    pkg purge -y $argv
end

function update
    pkg update
end