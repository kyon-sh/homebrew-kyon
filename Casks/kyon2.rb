cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.70"
  sha256 arm:   "6ee3262020a8591f682adb9092f5f9dec9c15b47882738d3e3359b2413a6d343",
         intel: "6a335a275c315a812d04f8a6eb2a57d94ea5ae773686dde241e5ca94583480c7"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.70/Kyon2-#{version}-macos-#{arch}.dmg"
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
