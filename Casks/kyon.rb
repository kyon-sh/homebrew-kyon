cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.20"
  sha256 arm:   "b74b378f1ad3a2017e6519696402e0fc6e822be6d32e1c858d32a03897b37a94",
         intel: "5fa52deec0e190ddca3e8380584075df9e65704af0200d8c0409e32fbbc16b7f"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.20/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon@preview"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
