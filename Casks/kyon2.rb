cask "kyon2" do
  version "0.0.19"
  sha256 "ce6614c16320caacebe655387334441db4bdbddfcf3f98b881c074266c7ed9a4"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.19/Kyon2-0.0.19.dmg"
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
