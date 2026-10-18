cask "kyon2" do
  version "0.0.23"
  sha256 "d0de39920a9caaff24c0467daf782ee37aa314bd6957d07b7e9ea12ecd1a3f80"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.23/Kyon2-0.0.23.dmg"
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
