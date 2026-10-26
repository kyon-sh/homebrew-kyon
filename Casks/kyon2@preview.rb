cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.53"
  sha256 arm:   "58db50de3b1b42a3de8764b7768ca148c2dcf59034140f819208ea49444fc7c7",
         intel: "7657a32076b9aad7890d5a47cdbde1288b9196d713d57f255e2fcba15ab4c6ef"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.53/Kyon2-#{version}-macos-#{arch}.dmg"
  name "Kyon2 Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon2"

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
