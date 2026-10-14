cask "kyon2" do
  version "0.0.12"
  sha256 "e37ee348ecf768d3457f97428d4acbdd7ac8de0c3b2b3bdff047888bdf3c39d1"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.12/Kyon2-0.0.12.dmg"
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
