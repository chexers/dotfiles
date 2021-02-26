
ssh-keygen -t ed25519 -C $USER_EMAIL

echo ""
echo "To use the key you've just generated, copy the contents of"
echo "  $HOME/.ssh/id_ed25519.pub into your github SSH&GPG keys section."
echo ""
