cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.29"
  sha256 arm:   "cbcfc1e32cbefcbebc41ac61d1db0723b6ebdf0d1515c53c3f7b0d52b4e9a917",
         intel: "1406001023814e309c26aa15e12f6c1d4bfc94904e210339ab3992afd8d018e3"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.29/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
