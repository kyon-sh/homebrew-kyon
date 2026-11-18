cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.12"
  sha256 arm:   "91144cfff8de3cbf7e782c87ea73f4fb876bb90e92703a49074e2aee21d99e15",
         intel: "eb4bed84e1f609660b2dcd9ce50f5e1866811cf9b387b8d8baefa0c9f118201b"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.12/Kyon-#{version}-macos-#{arch}.dmg"
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
