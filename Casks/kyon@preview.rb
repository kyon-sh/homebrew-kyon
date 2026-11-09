cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.88"
  sha256 arm:   "9bb2bf2280193fcb2b8e282f92d304ce44cd479b588b4b837989cd3736286617",
         intel: "eef38d6a9c58b89076edb63e481b0287e4b39a7c45f6e4fb608afcdf7359db7d"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.88/Kyon-#{version}-macos-#{arch}.dmg"
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
