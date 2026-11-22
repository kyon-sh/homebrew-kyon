cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.3"
  sha256 arm:   "e7a6bc11f5f4b28e27d286d388538f2109c0332fe5c96998c26676348c8a2e0d",
         intel: "2321a35a7055aee769622b758c51cceb57e79181031f5ad5ece48211cc1c5561"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.3/Kyon-#{version}-macos-#{arch}.dmg"
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
