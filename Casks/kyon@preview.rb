cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.6"
  sha256 arm:   "63f6e16d78ee4fa25ee78f754c910cb5ada589ffbb13bd796eb090380291c625",
         intel: "b4e999c4918a7c963cf05b552de56d04bbbf4ac6fbde2bd12d9c0d1166f51e16"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.6/Kyon-#{version}-macos-#{arch}.dmg"
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
