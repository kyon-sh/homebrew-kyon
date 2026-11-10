cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "aee833767181e115b9af872529a82baac7a0033f408d08784ac5164ed93fb584",
         intel: "23dcff1a5376d892be0d3e56700e8102cf59147f233339c3660911855adee64e"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.0/Kyon-#{version}-macos-#{arch}.dmg"
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
