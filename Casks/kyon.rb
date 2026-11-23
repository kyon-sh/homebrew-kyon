cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.15"
  sha256 arm:   "6be835d5da77fbca74205d2bb286bfc8d217a90f6be5dd39f180eafa59a6dcab",
         intel: "58a89534207495446b5b824cd4e49c973dc853b27f723ebcdb367392769ce96f"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.15/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon@preview"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
