cask "kyon2" do
  version "0.0.14"
  sha256 "b3178d0b7f36b3fd0553833189a149a07b29aa4d11f033112bea3d714167af9d"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.14/Kyon2-0.0.14.dmg"
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
