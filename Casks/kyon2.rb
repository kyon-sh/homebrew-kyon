cask "kyon2" do
  version "0.0.27"
  sha256 "fd275d961ba634a16c261bf6924ae15b777c8e8688cd76fd3ae014d7cdf7dd07"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.27/Kyon2-0.0.27.dmg"
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
