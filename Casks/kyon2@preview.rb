cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.69"
  sha256 arm:   "c5117c0de66fb25aab22b7a082d9783c5a0fc9a7e0314519a3de4aba5ca2b90b",
         intel: "12fe372df1771030839bb3550979ae633b021431c63eac49ae29fb2099c33f65"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.69/Kyon2-#{version}-macos-#{arch}.dmg"
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
