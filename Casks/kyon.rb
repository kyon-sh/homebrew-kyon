cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.23"
  sha256 arm:   "a9853212bc6dd0b8676a752a1e5dc7923d183ece671d4bce0bbb43c22088b66a",
         intel: "6dfe2812f525824865102ca9aebc91b930a633557304569369454df73ec33ea3"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.23/Kyon-#{version}-macos-#{arch}.dmg"
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
