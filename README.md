# Kyon tap

Homebrew tap for [Kyon](https://kyon.sh).

```sh
brew install --cask kyon-sh/kyon/kyon
```

That one command taps this repository and installs the newest release. To
follow every published build before it is promoted to a release, install
`kyon@preview` instead; the two replace each other.

Upgrade, and uninstall:

```sh
brew upgrade --cask kyon
brew uninstall --cask kyon
brew uninstall --zap --cask kyon   # also settings, caches and logs
```

`kyon2` and `kyon2@preview` were the names of these recipes before Kyon took
the name over; Homebrew follows them to `kyon` and `kyon@preview`.

Downloads and release notes: [kyon-sh/kyon](https://github.com/kyon-sh/kyon).
macOS 11 or later, Apple silicon and Intel; signed and notarized.
