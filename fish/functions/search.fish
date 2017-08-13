
function search
    apt search $argv | most
    read -p "Which item(s) do ya wnna install?" TARGET
    echo $TARGET
    echo "-----------"
end


