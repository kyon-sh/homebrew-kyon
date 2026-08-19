# Kyon tap

Homebrew tap for [Kyon](https://kyon.sh) — a terminal that answers to nobody but
you.

```sh
brew install --cask kyon-sh/kyon/kyon
```

That one command taps this repository and installs the newest release. To tap it
separately first:

```sh
brew tap kyon-sh/kyon
brew install --cask kyon
```

Kyon keeps itself up to date, so Homebrew is how it arrives rather than how it
stays current. To have Homebrew do it anyway:

```sh
brew upgrade --cask --greedy kyon
```

Uninstall, and remove what it left behind:

```sh
brew uninstall --cask kyon
brew uninstall --zap --cask kyon   # also settings, caches and ~/.kyon
```

Kyon itself — downloads, issues, source — lives in
[kyon-sh/kyon](https://github.com/kyon-sh/kyon). Apple Silicon only, signed and
notarized.
