cask "kyon2@preview" do
  version "0.0.15"
  sha256 "2b6c79bfcfef65046a43ce6cd973a6cb363c75ad51192cadb1eedde118ff6672"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.15/Kyon2-0.0.15.dmg"
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
