cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.71"
  sha256 arm:   "b5e8fc81e72812c67579fd930ae199a60f332f595270dcca2869651160252b3c",
         intel: "cfed99c4fafb5d26823a549ffd1479b663b763e2af7533aca36f1815705a40cf"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.71/Kyon2-#{version}-macos-#{arch}.dmg"
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
