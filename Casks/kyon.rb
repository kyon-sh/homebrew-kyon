cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.20"
  sha256 arm:   "f7c0bcd745106d8e02978c9eeec3a8aaecb45b40b82f202845455ebc68ffd686",
         intel: "dde9b06c001e70d327ca83e92ea4ec1a1a8d250ac38545cc199ec3aeebb5fb79"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.20/Kyon-#{version}-macos-#{arch}.dmg"
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
