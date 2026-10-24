cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.49"
  sha256 arm:   "7f27fcbd9cb8b1f1c82ae0b3189b0752b61e681de04be7cccc71e05d66f5a5f8",
         intel: "969fd50cc52d60a71724b1cb88ae90598efb903fa82ecbf4e9bed3dd3df71cee"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.49/Kyon2-#{version}-macos-#{arch}.dmg"
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
