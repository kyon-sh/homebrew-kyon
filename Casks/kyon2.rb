cask "kyon2" do
  version "0.0.31"
  sha256 "cf983e554700d2ad334e150035d85ab256211f2f21177f08aa8a210363972a6b"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.31/Kyon2-0.0.31.dmg"
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
