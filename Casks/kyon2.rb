cask "kyon2" do
  version "0.0.30"
  sha256 "ade77c8d448b883c6842caaecab09f2b783a6ca8f1a9d933ed9a6801bbe3bfbc"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.30/Kyon2-0.0.30.dmg"
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
