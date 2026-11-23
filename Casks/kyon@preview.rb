cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.17"
  sha256 arm:   "cbeb57e8c985e0fdee939d9c9e791c2dad69eb54c26089913d856738d9719ca9",
         intel: "6c5f23318b633c02308d9f3ca8fc8687aa063fc6af32e610f9d66ebff758add2"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.17/Kyon-#{version}-macos-#{arch}.dmg"
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
