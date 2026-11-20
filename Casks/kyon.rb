cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.14"
  sha256 arm:   "cc661999d811ce4d1f506e7f3a4bc7fbeb65b000a023df7966998a4507c25b78",
         intel: "4119f09e6e2b0f434a4a2b8f2a7d64530bbe236caea9d251820e292b5e9de21c"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.14/Kyon-#{version}-macos-#{arch}.dmg"
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
