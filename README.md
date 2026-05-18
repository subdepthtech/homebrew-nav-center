# Homebrew Nav Center

Private Homebrew tap for Nav Center friends and family beta builds.

## Install

The beta cask downloads from a private GitHub release asset. Export a token with access to `subdepthtech/nav-center` before installing:

```sh
export HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)"
brew tap subdepthtech/nav-center
brew install --cask nav-center
```

If the download fails with `401`, verify the tester is signed in with a GitHub account that has access to the private release asset:

```sh
gh auth status
gh repo view subdepthtech/nav-center
HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)" brew install --cask nav-center
```

If `gh repo view subdepthtech/nav-center` returns `not found` or `HTTP 404`, add that GitHub account to the private `subdepthtech/nav-center` repo or use a public DMG instead.

Do not pass the `git@github.com:subdepthtech/homebrew-nav-center.git` SSH URL unless the tester has SSH access configured for this tap repo. The one-argument `brew tap subdepthtech/nav-center` command uses GitHub over HTTPS.

## Upgrade

```sh
export HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)"
brew update
brew upgrade --cask nav-center
```
