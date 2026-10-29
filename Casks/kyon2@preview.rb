cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.67"
  sha256 arm:   "6ef40fc91af2577bc3b17e585b7298759fed84ca8c769fd45a1b43ce15bfece3",
         intel: "8383a583ec3e3871b61fb64e427a484ce9ca3e12affea3d88b7e3be091409d2d"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.67/Kyon2-#{version}-macos-#{arch}.dmg"
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
