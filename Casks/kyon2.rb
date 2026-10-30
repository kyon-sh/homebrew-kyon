cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.77"
  sha256 arm:   "d1213eb23aff268256a8465fb2aac75f82e3ef6b7b6b7c3d89a2a0cb9484d530",
         intel: "fcf50086c891ce1824872cd380546c20fa69620359369ecee0a4141db866b6bf"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.77/Kyon2-#{version}-macos-#{arch}.dmg"
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
