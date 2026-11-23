cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.7"
  sha256 arm:   "fdade58f1944042560483792e437dcf09989dd7337cf0fb2347ff3ba816f2901",
         intel: "21944b3408078f0af0783cf708566ab9b98fda523f67969dd8f7ec86fa29d054"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.7/Kyon-#{version}-macos-#{arch}.dmg"
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
