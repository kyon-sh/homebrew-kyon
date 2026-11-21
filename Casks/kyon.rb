cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.22"
  sha256 arm:   "9d90abe29a26ec844c5362935c31d34aeed431447d4d2a8c9729717a8f155e64",
         intel: "94780c9a1db871c3c8dea8310e5b15ba250445e8e644d5c7196961c597ff4b15"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.22/Kyon-#{version}-macos-#{arch}.dmg"
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
