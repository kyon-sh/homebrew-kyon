cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.25"
  sha256 arm:   "bedc5e7a96c02f02d10288342f5c2dd9fe6e81587db941039d167f2d80d4cfd5",
         intel: "dfe3709a8010e61ef4f0a9c7c676254c34c1dbc9cbe9dc08dc58ef6df03f761a"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.25/Kyon-#{version}-macos-#{arch}.dmg"
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
