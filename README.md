# Homebrew Nav Center

Private Homebrew tap for Nav Center friends and family beta builds.

## Install

The beta cask downloads from a private GitHub release asset. Export a token with access to `subdepthtech/nav-center` before installing:

```sh
export HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)"
brew tap subdepthtech/nav-center
brew install --cask nav-center
```

Do not pass the `git@github.com:subdepthtech/homebrew-nav-center.git` SSH URL unless the tester has SSH access configured for this tap repo. The one-argument `brew tap subdepthtech/nav-center` command uses GitHub over HTTPS.

## Upgrade

```sh
export HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)"
brew update
brew upgrade --cask nav-center
```
