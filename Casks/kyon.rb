cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.16"
  sha256 arm:   "391010672e7e2f55092467db17dcc342477e30e4cc10604441e39c5165060692",
         intel: "38c4b15cd2551905f7a1e6b33dbfa4e63e9f76d4d8ff4ac32de24ce8d1f64857"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.16/Kyon-#{version}-macos-#{arch}.dmg"
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
