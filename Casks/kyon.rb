cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "e6b7898174e5e1f21d14200c22908764d6c7b860032e453025efee4c41994e57",
         intel: "202c2a67bdb185bdfdc402ffcea9eae9b0621d1f2394bd8d8a8e50a86fbc468f"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.1/Kyon-#{version}-macos-#{arch}.dmg"
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
