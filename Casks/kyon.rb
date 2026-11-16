cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.9"
  sha256 arm:   "a356383495b8f220a56f42cd01a971013c34666d0c3800e77d1f13b44e261fc8",
         intel: "6dc9162247e7ce7b26e02d68a370c73a9515c30a17e4c0498971d1c698fb3184"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.9/Kyon-#{version}-macos-#{arch}.dmg"
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
