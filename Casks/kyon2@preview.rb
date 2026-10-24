cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.48"
  sha256 arm:   "d98d87558f39341e24980fa02b2e8fa350dd9207c6943162fc5d0e2e7be70615",
         intel: "6fe7b098b54e8f3c8fa20a867253dc8d7146d258ae372ede33f4a98e6338eccc"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.48/Kyon2-#{version}-macos-#{arch}.dmg"
  name "Kyon2 Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon2"

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
