cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.94"
  sha256 arm:   "7976956c3df3020c7650fae1625a4d8a9164c8a40675c1c481c9835403a531d9",
         intel: "bab18b73ad5835ba0680b60c7f319e7185a51c2ef419f698570f4364d02bc7f5"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.94/Kyon-#{version}-macos-#{arch}.dmg"
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
