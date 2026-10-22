cask "kyon2" do
  version "0.0.43"
  sha256 "22f0073c7419a95a55e9e021c9487a31e1b3ef13f8eeb33a4da6e87a6d7f804f"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.43/Kyon2-0.0.43.dmg"
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
