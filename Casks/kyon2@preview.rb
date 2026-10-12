cask "kyon2@preview" do
  version "0.0.7"
  sha256 "f98d4afdf290d81109dd77b57f1b08b4cc8e520df904a7ffb86cf03ba9aa7bb3"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.7/Kyon2-0.0.7.dmg"
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
