cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.47"
  sha256 arm:   "ff3625142c942ef2b995728fe27e2e77ab727ae1effce5f2356576c43dfd6b0e",
         intel: "44498a6f133b177921a85372ec374c7e4da065b42a16bcb85cc645e6bac6427f"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.47/Kyon2-#{version}-macos-#{arch}.dmg"
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
