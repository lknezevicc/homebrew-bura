cask "bura" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/lknezevicc/homebrew-bura/releases/download/v#{version}/Bura-#{version}.dmg"
  name "Bura"
  desc "Office climate control menu bar app for ENGO thermostats"
  homepage "https://github.com/lknezevicc/homebrew-bura"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Bura.app"

  # Homebrew always quarantines casks. Bura is signed with a self-signed identity (no Apple notarization),
  # so Gatekeeper would block the first launch. Remove the flag for this cask only.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Bura.app"]
  end

  zap trash: [
    "~/Library/Application Support/Bura",
    "~/Library/Preferences/com.lknezevicc.bura.plist",
  ]
end
