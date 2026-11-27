cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.26"
  sha256 arm:   "cbd6d4e0ce7f266094f219a35f2ff53a3702fcef9036ca3bbc9d5af5a343c0e7",
         intel: "58ccbd2050c4c222cd6657280f009d948945c0e10f3aaa1fd54fcd53d5a2c432"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.26/Kyon-#{version}-macos-#{arch}.dmg"
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
