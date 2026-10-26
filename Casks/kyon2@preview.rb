cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.54"
  sha256 arm:   "991d4e18149de2adbdf5c64612c63cb9023d9eb3bd17c4bd305f7018843ea960",
         intel: "c0b67f6c613a5f764b7db0eef96d6ee6a605e35c95a5827ef7c2198ad875b159"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.54/Kyon2-#{version}-macos-#{arch}.dmg"
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
