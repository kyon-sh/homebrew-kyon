cask "kyon2@preview" do
  version "0.0.18"
  sha256 "11635ce7cb686f76f6df2b595da6fa599593fd9961ac892406a72ab8d9249e8d"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.18/Kyon2-0.0.18.dmg"
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
