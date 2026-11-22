cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "91b4b5d600942e16fc49befceaec4b1fa94fec0ff31cdfa18534d23bd74c3452",
         intel: "cddc6587b0f60bdaa69b549884db23e30730bb5b1fa1e6171e0e192ed3e47fa3"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.0/Kyon-#{version}-macos-#{arch}.dmg"
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
