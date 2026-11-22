cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.27"
  sha256 arm:   "d5ad2c35f1b60f4656a7f01af082ce6b49faabe8320ad7009d87e97c2800a731",
         intel: "89e0382d9a3e51c508dd81c080eeea39a901aba6c703a972f3e0fbe711306d80"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.27/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
