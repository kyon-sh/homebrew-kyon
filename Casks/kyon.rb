cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "14079f99b9aae64178fc7397f07cb2b4079ec80dd8d21e052ea96e0b361eb8fb",
         intel: "6b46b586a3815b2a224b55043203d93da843df07e335a0b3ddbdb647facf1dbc"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.2/Kyon-#{version}-macos-#{arch}.dmg"
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
