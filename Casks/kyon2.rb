cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.65"
  sha256 arm:   "280b83d4df0fed830986c66e991641c3b213595a7fa81ffcec6e17097f8f45fd",
         intel: "3ce08e29aec35a22bcdbbeaff8bc376a896a6aeb2729f0230204f73a0e5e3140"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.65/Kyon2-#{version}-macos-#{arch}.dmg"
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
