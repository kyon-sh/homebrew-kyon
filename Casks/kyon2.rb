cask "kyon2" do
  version "0.0.10"
  sha256 "9d29c5e2086f246535391964ab9a8c04f65c3a6505813b05ab0431b65a282cb5"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.10/Kyon2-0.0.10.dmg"
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
