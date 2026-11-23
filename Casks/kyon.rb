cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.14"
  sha256 arm:   "5ccfe91c43c65bbf92c4fd4b04249b2998ac428a8801939d57dd08366ab60361",
         intel: "fb8cdb31abf2d010d1838baa9ffd2d732ae9d1ec4ebc9b7c103afd3deb8f5b34"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.14/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon@preview"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
