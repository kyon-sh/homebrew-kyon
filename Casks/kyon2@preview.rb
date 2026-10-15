cask "kyon2@preview" do
  version "0.0.22"
  sha256 "a2674430ea46d6f9f606af0ec9894f10256ae724af3f9511da70a8bb47ca4411"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.22/Kyon2-0.0.22.dmg"
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
