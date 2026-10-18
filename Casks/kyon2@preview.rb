cask "kyon2@preview" do
  version "0.0.24"
  sha256 "2c4313e74b02a5a2e6f369157df8c14b8ee57e4590cabaa447825695460d2a0c"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.24/Kyon2-0.0.24.dmg"
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
