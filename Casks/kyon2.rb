cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.56"
  sha256 arm:   "c405dda5d7d1487bdfda3ed31e9c00bc8421cc7e49c4b50a8467cc27ea9f16f7",
         intel: "8257ca15fe2a0a9f5b9896bafb47de41fb6eacf6cc41d2b7d2026652732eb012"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.56/Kyon2-#{version}-macos-#{arch}.dmg"
  name "Kyon2"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon2@preview"

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
