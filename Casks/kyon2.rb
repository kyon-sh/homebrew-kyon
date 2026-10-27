cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.57"
  sha256 arm:   "5246cf2e4f0e40cdc3087b6064b0cf4fc5f51890b514a62960ed5e68d1b9fc55",
         intel: "fefdfeae48c62a32dc103c985de868220fcb6a3dfb8ea87cf3d49ce4f904ac65"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.57/Kyon2-#{version}-macos-#{arch}.dmg"
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
