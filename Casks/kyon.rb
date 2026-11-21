cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.23"
  sha256 arm:   "33cfcbc45a7098e1a593f211623c82aeb427703bc5be7a7b13df86e5e2f5f6b4",
         intel: "05274ecf75e5f04f66aa69d57c5889fb8f44f0ece3466c550ee31241af011211"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.23/Kyon-#{version}-macos-#{arch}.dmg"
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
