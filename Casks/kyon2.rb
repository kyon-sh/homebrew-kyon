cask "kyon2" do
  version "0.0.16"
  sha256 "9e861179ae829017914ce4e2b88d46b183c34b7f9af42348dd52ae61487328ff"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.16/Kyon2-0.0.16.dmg"
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
