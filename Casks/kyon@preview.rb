cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.2"
  sha256 arm:   "ae3a57beaff8e37e066231dee5c22a493fb20c8a15f229c54f5d8861d314c5bd",
         intel: "cd9e282954742dd3a373c722ce25ca34f7d543ae5e0c0f36e303d68e14a1b9fb"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.2/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
