cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.11"
  sha256 arm:   "9bf33b66924ce77b2317b845bd7f032149921539cffdb03cbcddd1bc7500a6c5",
         intel: "7af151a098bc9b84b80d66c1a6560528cf4996406c34293cf440695b4d35cbd6"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.11/Kyon-#{version}-macos-#{arch}.dmg"
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
