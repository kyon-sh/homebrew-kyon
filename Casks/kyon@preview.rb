cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.19"
  sha256 arm:   "674d7c1012e7285514289a9545b7bc404cb0460dc9ddb2a2f8b664f652895f1e",
         intel: "1a31f1b639ee3aeaff2094ccb90af75ae0ff4887705aab80338b5b57f2b4ad35"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.19/Kyon-#{version}-macos-#{arch}.dmg"
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
