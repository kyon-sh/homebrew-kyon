cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.74"
  sha256 arm:   "66bafcbbf75d6f89d1f25a7272fe0f22c6bd0abe1ecaabc62cf8ed9546e4b155",
         intel: "c3e8e76881c8e5cd35fc1d566e35b5354a4b3b4e925ade9d4f42f3c4b0e6c351"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.74/Kyon2-#{version}-macos-#{arch}.dmg"
  name "Kyon2"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon2@preview"

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
