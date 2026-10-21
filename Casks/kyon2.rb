cask "kyon2" do
  version "0.0.36"
  sha256 "17573e98df269f9927d0867b1bf0ced88e80775117af422d34926da1d0bd06ee"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.36/Kyon2-0.0.36.dmg"
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
