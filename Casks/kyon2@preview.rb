cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.60"
  sha256 arm:   "0ce37905a62d490013a62bd86518f8279ecbdf38c2e1a7711b23aaf6c8c95093",
         intel: "c5448f4a8eebae9aad3a44b0c4ad820fd62abfceba4d90dddb68a843148c43c1"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.60/Kyon2-#{version}-macos-#{arch}.dmg"
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
