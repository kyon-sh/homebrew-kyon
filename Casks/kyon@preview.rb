cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.13"
  sha256 arm:   "1c76f8d89c6d570536457e5393f8ffb0e60deacd24b6424e15c77b88375df3ad",
         intel: "2b05cb47b6f5761be47d59e4bbdd9112f1e225ef714bb5546e32f0bc93cd9684"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.13/Kyon-#{version}-macos-#{arch}.dmg"
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
