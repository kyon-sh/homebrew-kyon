cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.4"
  sha256 arm:   "27123f40c323173d4351fcdb78b23f9273d040366427bec35a18fbbaef3ebe28",
         intel: "1902f007aed22cfbbbc84e1a5d090f30530351456eda9b6052d90c5b2786309e"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.4/Kyon-#{version}-macos-#{arch}.dmg"
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
