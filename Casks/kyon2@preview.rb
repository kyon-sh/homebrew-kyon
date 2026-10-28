cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.62"
  sha256 arm:   "3c86d16658c4e5be41270a9e514c144bc5ae3ac9829820e27dd76cc8a6a8ee25",
         intel: "6590ffa15c838dc2c2151615973b1dfabc53442824653476c89101017eab8ae7"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.62/Kyon2-#{version}-macos-#{arch}.dmg"
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
