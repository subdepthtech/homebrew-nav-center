cask "nav-center" do
  version "0.1.0-beta"
  sha256 "7fd9ca0774f525b7adcaad94e88fedb6e2cfce42d83034217a31973356b51d87"

  url "https://github.com/subdepthtech/nav-center/releases/download/v#{version}/NavCenter-#{version}-macos-arm64.dmg"
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
    The current beta is Developer ID signed, notarized, and stapled.
  EOS
end
