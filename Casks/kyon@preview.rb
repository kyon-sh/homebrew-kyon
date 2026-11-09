cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.91"
  sha256 arm:   "8c57b112450dc6ebd2133923fefcc4fc7010dcf9b09c8bdd1583d716823289f1",
         intel: "8209cf597fc030a636a5471dcc60170dce3ea777278597716315725a45bc2c18"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.91/Kyon-#{version}-macos-#{arch}.dmg"
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
