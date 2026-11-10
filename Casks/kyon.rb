cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.4"
  sha256 arm:   "6ef38c1c8c174ab7b35e6d33572d39e3d5abab592621af40cb4390858340bfeb",
         intel: "9982a456df6a146c2ec31d7bfeb308355dec2ba0d4e09741f01ec1a214888abc"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.4/Kyon-#{version}-macos-#{arch}.dmg"
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
