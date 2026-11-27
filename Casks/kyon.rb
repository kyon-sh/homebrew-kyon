cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.25"
  sha256 arm:   "3e7b93a0a7a884a7f023c4d3252a121428ba2dd9961cd560758d836d1fdb2fc3",
         intel: "4371e24636015e4ff7db91d2ba55511fe619354b3e27b288cec8f21eefb3c2e3"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.25/Kyon-#{version}-macos-#{arch}.dmg"
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
