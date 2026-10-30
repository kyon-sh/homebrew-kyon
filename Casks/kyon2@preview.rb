cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.76"
  sha256 arm:   "6a4b0cf765d5eab746aad75c6b8aeab7a5acda08ca11d39d23d800d49e015abc",
         intel: "bbeba5712fdcb2226ea09d4cc076591bab49610e4235d239e43bb39e31957a80"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.76/Kyon2-#{version}-macos-#{arch}.dmg"
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
