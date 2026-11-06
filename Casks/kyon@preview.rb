cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.81"
  sha256 arm:   "c90e2897190917b51063e4656eff306406df5165e7b4af71c6041565750a098f",
         intel: "7945ac6f840433dc40bf9be505a428e53c72b6f07f5aa2a2f247e2c6cfbd65d6"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.81/Kyon-#{version}-macos-#{arch}.dmg"
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
