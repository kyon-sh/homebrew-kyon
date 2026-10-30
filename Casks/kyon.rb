cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.79"
  sha256 arm:   "5c519c671e475884710c91b5154cea9f713678554d7426f911eb00c606c890f0",
         intel: "d1b899f7d8d365f64316ecb2b0d724cde45bb93c8ca1800d6ecf8379404b4f8e"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.79/Kyon-#{version}-macos-#{arch}.dmg"
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
