cask "kyon2@preview" do
  version "0.0.37"
  sha256 "5ee339f0354b1c3545a81375f68835f80e23b68560968b90313b9f190fe54ba7"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.37/Kyon2-0.0.37.dmg"
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
