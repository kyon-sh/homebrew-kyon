cask "kyon2@preview" do
  version "0.0.41"
  sha256 "409e1f11ed75554cdf2ef53adc286bef345b81bd6873c8819a58452a92401875"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.41/Kyon2-0.0.41.dmg"
  name "Kyon2 Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon2"

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
