cask "kyon2@preview" do
  version "0.0.29"
  sha256 "2f849166eb1a62b81247993e1e3882bbd8e4b8f5f3401699fbc693f58b07ad8e"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.29/Kyon2-0.0.29.dmg"
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
