cask "kyon2" do
  version "0.0.13"
  sha256 "bff52aff49d5fa7c1b338f2fbdc510f9393fcc4ca6545211a72a044be04f400f"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.13/Kyon2-0.0.13.dmg"
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
