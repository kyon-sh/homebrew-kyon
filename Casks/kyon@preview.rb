cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.89"
  sha256 arm:   "7b37fdfcd147526dc8fafab269578588a10dd050388e6286c09efc1a5e008f73",
         intel: "71ad339b9538ed51a5c6f656e753a6a6d575b61e3ba5bace18a3f8bc0a97592d"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.89/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
