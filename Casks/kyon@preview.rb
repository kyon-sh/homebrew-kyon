cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.26"
  sha256 arm:   "0507091c29253bcaba426216f66504ac74fddc381e5a5c91e79165c573d14cc1",
         intel: "84ad5cf63c52ac39ac94aaabb470215ba8c5eb5bea42bf2ed10632c11729209d"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.26/Kyon-#{version}-macos-#{arch}.dmg"
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
