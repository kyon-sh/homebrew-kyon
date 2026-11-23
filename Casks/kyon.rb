cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.19"
  sha256 arm:   "b550a2f353ca52b188e85f43bc07deb3964e1d0fd0bb0e47b3cf9ba368e7e1ac",
         intel: "1e525c1bd5c85872f15f92e0634eeccb4bbfde7c6fcb6c47d29a4633293b7b01"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.19/Kyon-#{version}-macos-#{arch}.dmg"
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
