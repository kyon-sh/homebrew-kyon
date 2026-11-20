cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.15"
  sha256 arm:   "3b86eb9c2cadb9aac2c6f2247da75db400555e67f78841c1f87775772bd0d8ca",
         intel: "fe918bf78e43b7477ac872d6b69efade829c6da5e4e0424b82cb78973d97fe6a"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.15/Kyon-#{version}-macos-#{arch}.dmg"
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
