cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.92"
  sha256 arm:   "7e7071b56fa219cc0b2ffd15f0ef3387676fba355cd9b9ecd62e8836d8af4c94",
         intel: "cb7febdfee85d140a51188e03c9729b1bdfbc10060f16222bcbd924e00c4399a"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.92/Kyon-#{version}-macos-#{arch}.dmg"
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
