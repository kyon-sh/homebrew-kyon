cask "kyon2" do
  version "0.0.20"
  sha256 "edb6552b763549cd3ea6d0a4f5673ddd454091bcb02e2c8a859662cc4092a0d8"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.20/Kyon2-0.0.20.dmg"
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
