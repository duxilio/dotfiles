Dotfiles
========

Keep the dotfiles where-ever you want, I personally prefer keeping them in `~/dotfiles`.

Then when you want to take them into use run `./bootstrap` which will `git pull` the latest version from the repo and copy them into your `$HOME` dir.

## Installation
```
git clone https://github.com/kvendrik/dotfiles.git && cd dotfiles && ./bootstrap
```

## Updating
```
./bootstrap
```

## Testing
When you've customised the dotfiles or the `boostrap` file in particular you might want to check what would happen if you'd run `./bootstrap`.

For this you can run the bootstrapper with the `--test` flag. This will copy the files to `./test/` instead of `$HOME`.