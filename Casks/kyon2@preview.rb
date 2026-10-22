cask "kyon2@preview" do
  version "0.0.40"
  sha256 "19758897bd3e17acbd9b376303be0c0b4d42b3a6c13ba67da441070015044db5"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.40/Kyon2-0.0.40.dmg"
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
