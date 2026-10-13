cask "kyon2" do
  version "0.0.9"
  sha256 "266707a746cac3a4d4399a051ac4fc4ebf5d2592abf7c8956f3ed2d4195aa9de"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.9/Kyon2-0.0.9.dmg"
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
