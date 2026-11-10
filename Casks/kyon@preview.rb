cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.95"
  sha256 arm:   "b1be3734a8423128a09c33db0dc3d725dc6b3409a5d0d58c6881425f55cc4f71",
         intel: "f1dc607ab9db125b1bcd21fe2d3376e900e3a2de23a36d41febfe9eaca8779b7"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.95/Kyon-#{version}-macos-#{arch}.dmg"
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
