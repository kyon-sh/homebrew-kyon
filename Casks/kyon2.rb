cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.50"
  sha256 arm:   "79510bac71e40b744ba63d3bfe5d45399b8f4588717d14841483959a54081d61",
         intel: "98df271cf5fb0e77403dd234cffc6052ceb970caebb5d190d51b564e95c76af4"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.50/Kyon2-#{version}-macos-#{arch}.dmg"
  name "Kyon2"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon2@preview"

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
