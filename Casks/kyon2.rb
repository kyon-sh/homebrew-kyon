cask "kyon2" do
  version "0.0.45"
  sha256 "6aecdb668eb1aecba459eeb721cc7bf100a0ed490790f92ef96deb87e574cd4e"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.45/Kyon2-0.0.45.dmg"
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
