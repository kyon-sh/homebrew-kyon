cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.85"
  sha256 arm:   "2351a7b5769487ef78545d34103f88d6c45cce195a79453a0eeac86a84a6eded",
         intel: "c1279fab984addf4d0c98844bb9645dae4ff103b766a5330d742f9fdbaa256aa"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.85/Kyon-#{version}-macos-#{arch}.dmg"
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
