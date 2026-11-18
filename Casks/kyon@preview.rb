cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.11"
  sha256 arm:   "9b9aaae024113d653b3837d8a92320b5825e9a169d4694d8d05bb95a83d56f72",
         intel: "27e4fb4aa744ddc622f68c8338fbb77fec9b46928c4f7a20fa99746933ca230f"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.11/Kyon-#{version}-macos-#{arch}.dmg"
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
