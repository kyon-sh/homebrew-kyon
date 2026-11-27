cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.27"
  sha256 arm:   "4d8cfcbe9213ade8fee02633bd120d2ee9fda7ff21ddc81f1ec86fbe6fc1c9ad",
         intel: "8f2dd22f0b8428aab5e34061322993381e2289b8e03e3f75c7b9132a4103a342"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.27/Kyon-#{version}-macos-#{arch}.dmg"
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
