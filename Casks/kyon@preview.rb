cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.5"
  sha256 arm:   "b6d0870c66e769381a06a29b1f337464b697d07ff1a7e23b0f52ec9e7bb7a163",
         intel: "00df8799cd0146193a01d25c41a0b9ee1e520e2add01d247467b84c51567392b"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.5/Kyon-#{version}-macos-#{arch}.dmg"
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
