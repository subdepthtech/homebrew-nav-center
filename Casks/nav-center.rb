cask "nav-center" do
  version "0.1.0-beta,422831674"
  sha256 "7fd9ca0774f525b7adcaad94e88fedb6e2cfce42d83034217a31973356b51d87"

  url "https://api.github.com/repos/subdepthtech/nav-center/releases/assets/#{version.csv.second}",
      header: [
        "Accept: application/octet-stream",
        "Authorization: token #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}",
      ]
  name "Nav Center"
  desc "Local-first dashboard for job-application packages and resume workflows"
  homepage "https://github.com/subdepthtech/nav-center"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Nav Center.app"
  binary "#{appdir}/Nav Center.app/Contents/MacOS/navcenterctl"

  uninstall quit: "com.subdepthtech.navcenter"

  zap trash: [
    "~/Library/Application Support/Nav Center",
    "~/Library/Preferences/com.subdepthtech.navcenter.plist",
  ]

  caveats <<~EOS
    This is a private friends and family beta cask. It requires GitHub access
    to the private `subdepthtech/nav-center` release assets.

    Before installing or upgrading, export a GitHub token with read access:
      export HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)"

    The current beta is Developer ID signed, notarized, and stapled.
  EOS
end
