cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.83"
  sha256 arm:   "66f7e76e55eb2dcab8dc8d188f9f19b94c6f101ea203e6a379e9bb0021a6b470",
         intel: "43ac2c43a2ba7fcdcc1a027ac8bf4aee253b17eeaca3e0dad2aac24ff6b3beea"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.83/Kyon-#{version}-macos-#{arch}.dmg"
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
