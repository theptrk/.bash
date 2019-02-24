# .bash

Instead of simply relying on a `.bash_profile` we are going to create a `.bash` directory to store our `.bash_profile`.

This new directory makes it easier to version control our settings.

Since your mac will look for a `.bash_profile` in your root directory we will symlink our file there

## Setup

- [ ] Clone the repo
```
$ cd && git clone https://github.com/theptrk/.bash.git
```

- [ ] Create a symlink from `~/.bash_profile` to `~/.bash/.bash_profile` file, and `source` it
```
$ ln -s ~/.bash/.bash_profile ~/.bash_profile
$ source ~/.bash_profile
```

- [ ] Optional: add secret, local settings by creating a local file `.bash_profile_local`.
Our original `.bash_profile` will take care of sourcing this local file
```
$ touch ~/.bash_profile_local
```

sources
https://natelandau.com/my-mac-osx-bash_profile/
