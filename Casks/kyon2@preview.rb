cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.58"
  sha256 arm:   "7e42b78145b26fd2249d4289abd25b428d09d3045422a647c9dd9c45fa25aef4",
         intel: "a07706442c97a87e5a5793be28c5282d40c19d7364ce12b668b3e8a8b1a182de"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.58/Kyon2-#{version}-macos-#{arch}.dmg"
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
