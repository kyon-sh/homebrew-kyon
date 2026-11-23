cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.8"
  sha256 arm:   "e11db8f68e7b18f10620e130f3837be80b3a88f87322d1367ae530d7fe7ac2be",
         intel: "1aab9946d7d0ce72f62dd0cabc934fd5d6381bda8465107808466fe665bb2f54"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.8/Kyon-#{version}-macos-#{arch}.dmg"
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
