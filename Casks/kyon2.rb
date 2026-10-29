cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.72"
  sha256 arm:   "99973cf66bf588b37905664a4e080345ca662925dbf1566acdae953b3fa0775e",
         intel: "7f50cd221fe4309952e613bdcba96e781a172eac7a15599cc1f204804a489557"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.72/Kyon2-#{version}-macos-#{arch}.dmg"
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
