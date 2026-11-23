cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.9"
  sha256 arm:   "732eae72decdc79e37d00ffaebca887c7b1a6bb5e4cca4537238f8188f04e36a",
         intel: "debe1e442055fc8cb645fe09eecdbd06d411de8c6d77b0bc0e80698a3fd6b76b"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.9/Kyon-#{version}-macos-#{arch}.dmg"
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
