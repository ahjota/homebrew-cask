# zap

## zap Stanza Purpose

The `zap` stanza describes a more complete uninstallation of files associated with a Cask. The `zap` procedures will never be performed by default, but only if the user invokes the `zap` verb:

```bash
$ brew cask zap td-toolbelt             # also removes org.ruby-lang.installer
```

`zap` stanzas may remove:

* Preference files and caches stored within the user’s `~/Library` directory.
* Shared resources such as application updaters. Since shared resources may be removed, other applications may be affected by `brew cask zap`. Understanding that is the responsibility of the end user.

`zap` stanzas should not remove:

* Files created by the user directly.

## zap Stanza Syntax

The form of `zap` stanza follows the [`uninstall` stanza](uninstall.md). All of the same directives are available. The `trash:` key is preferred over `delete:`.

Example: [dropbox.rb](https://github.com/Homebrew/homebrew-cask/blob/fa4d9da31b557cba0fb9f983b7ea9e75af1a5f9e/Casks/dropbox.rb#L21-L43)
