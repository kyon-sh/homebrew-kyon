cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.12"
  sha256 arm:   "0d1f9e8f14431b3240cbb52285406ba470c5479ecc21ddce13c48990e08f0b6d",
         intel: "d6d62486b0d2072bd9037ff83ac46c76f07362a8f2588b06745c53be2e9ae84a"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.12/Kyon-#{version}-macos-#{arch}.dmg"
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
