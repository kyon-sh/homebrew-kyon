cask "kyon2@preview" do
  version "0.0.8"
  sha256 "83cf3fb52b0945bdcd5bf85b7863a5805e3f2bddd244361113777ee508211de4"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.8/Kyon2-0.0.8.dmg"
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
