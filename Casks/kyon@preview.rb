cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.17"
  sha256 arm:   "a741d6f11e7f05a8aa4477c3e7dd0d655b1505ae6c8f3949a90e97b1c6df3993",
         intel: "5adcecf6fe973a7ad9191d2127d3048bf4c2ee48c44ee866d394e3a581c8e1d8"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.17/Kyon-#{version}-macos-#{arch}.dmg"
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
