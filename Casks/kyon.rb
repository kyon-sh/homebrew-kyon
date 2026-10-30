cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.80"
  sha256 arm:   "7f4624606551cdaaaa46cbf746641e45256ec496b15f5f38bdd09f72beee9180",
         intel: "f7de7e099c9cba9418ffc79634763e1c10bc3ed2237bb3d6bed84b80c49d18b4"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.80/Kyon-#{version}-macos-#{arch}.dmg"
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
