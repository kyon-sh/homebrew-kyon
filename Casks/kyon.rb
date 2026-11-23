cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.10"
  sha256 arm:   "2b60541c1a1537811512c00ea1f76510aee4424891aff419dbe7f3aa45b07643",
         intel: "4e8c633326bc679cb5f2c6cba8a549d08c81c610b1777ca37b861b90fd0f07b8"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.10/Kyon-#{version}-macos-#{arch}.dmg"
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
