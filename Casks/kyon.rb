cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.21"
  sha256 arm:   "fa2deb7878c32557811e899c25699977052ac635f224032e4dfe633b8bee5fc9",
         intel: "57ceeeaaab172d228dad3662d64582c0ee3058a07f306e3491c0335d94242022"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.21/Kyon-#{version}-macos-#{arch}.dmg"
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
