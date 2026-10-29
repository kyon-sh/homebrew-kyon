cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.68"
  sha256 arm:   "d433ea195c7e040b14b3dc37fdc89a6dca9b44a61851e5317c05d97a25b4ee07",
         intel: "88a4e2a98a6a3f35a8756a18956ee44d6b01eec7d567e5b2444237b854cc1917"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.68/Kyon2-#{version}-macos-#{arch}.dmg"
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
