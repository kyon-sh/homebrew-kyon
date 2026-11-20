cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.16"
  sha256 arm:   "7aeb8ce3d217ffbd0b2a0a64fe9fc541ab9a3e0832632b0d66d391ede8fd4b6b",
         intel: "4e4ea7379d6504cba583a72924891596865e5c55a79c69ae3605e8db8048f694"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.16/Kyon-#{version}-macos-#{arch}.dmg"
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
