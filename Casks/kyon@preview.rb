cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.24"
  sha256 arm:   "3fae492d56f75bc569750b0d9509bc937b75e02973b7abd680bb510d4462a45d",
         intel: "e81e64772421fc894173eb4c04e457dab83a594fef0eff2ac8016aff0317ded0"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.24/Kyon-#{version}-macos-#{arch}.dmg"
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
