cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.28"
  sha256 arm:   "84cae1907cf6f8c015dadeb5d7cb980ebf1a15cb779efd52ea709b04c6670a95",
         intel: "779a2a5852a84cffb90da6743ead7bab2df1f6588e1a3fa5b88a518e5bbb6971"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.28/Kyon-#{version}-macos-#{arch}.dmg"
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
