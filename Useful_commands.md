To authenticate with ssh with a pair of private and public key

Generate the pair of keys following [these](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) instructions

`ssh-keygen -t ed25519 -C "your_email@example.com"`

`$ eval "$(ssh-agent -s)"`

`ssh-add ~/.ssh/id_ed25519`

From the source host (home pc) run

`ssh-copy-id myname@somehost`


