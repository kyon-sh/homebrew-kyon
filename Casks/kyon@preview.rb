cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.3"
  sha256 arm:   "331f40e14c56869e5f16b3188b80b4055e467253820c4e37b5aff669749ba52d",
         intel: "724fdae72097095ef6379bffcabe0f07f7496901b039617bf82f03017d4e1e99"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.3/Kyon-#{version}-macos-#{arch}.dmg"
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
