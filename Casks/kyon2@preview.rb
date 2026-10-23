cask "kyon2@preview" do
  version "0.0.44"
  sha256 "6e9bceecbb7315cd1791fd4fc1523dc05a11ebb330fa4a7ff9b8d3797520e0e7"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.44/Kyon2-0.0.44.dmg"
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
