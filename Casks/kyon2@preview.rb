cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.66"
  sha256 arm:   "46a88be267aa14818f226abc596333437805be1b6514a00e1f706a4ccb988c9a",
         intel: "2a31076d976edbc9ab9fa96cdbc5f532f2d1e19e94b65d11766015b535bf13af"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.66/Kyon2-#{version}-macos-#{arch}.dmg"
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
