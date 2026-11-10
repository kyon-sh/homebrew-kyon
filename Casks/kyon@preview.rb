cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "2963cc5447d53ba362ab611c23792a1136883c467aae9b5a2f323fd7ee6998e4",
         intel: "a78251521a8512152e3ffe38ae3ab6b39028b342d8971fc2b56faaa4aa434059"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.1/Kyon-#{version}-macos-#{arch}.dmg"
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
