cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.21"
  sha256 arm:   "c0a62896b6a856cfd39012f9e693ddd8aec962dfcbb8f6e2e50b949e66a9343d",
         intel: "df61756201d0f44d11d1f4689c20d4f264e4a1663c5b9fd32e77f52757d8864e"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.21/Kyon-#{version}-macos-#{arch}.dmg"
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
