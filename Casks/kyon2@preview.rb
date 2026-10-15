cask "kyon2@preview" do
  version "0.0.17"
  sha256 "7f95a523d8ebd12a342cdc9d3cb24be65f0b5e4ad9257d18dc34e80e756c193a"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.17/Kyon2-0.0.17.dmg"
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
