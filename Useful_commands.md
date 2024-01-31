To authenticate with ssh with a couple of private and public key

`ssh-keygen -t ed25519 -C "your_email@example.com"`
`$ eval "$(ssh-agent -s)"`
`ssh-add ~/.ssh/id_ed25519`
From the source host (home pc) run
`ssh-copy-id myname@somehost`


