cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.64"
  sha256 arm:   "a4117b2a3048a682632bf83428202cc8485df349d1632391eb74dccad0c2318a",
         intel: "53dcd2f87b15769a7119d3f1ba012f1ba173980bc7b13bb7cd862313d9bd6789"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.64/Kyon2-#{version}-macos-#{arch}.dmg"
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
