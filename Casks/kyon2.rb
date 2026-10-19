cask "kyon2" do
  version "0.0.28"
  sha256 "d791eb63c44c3ca65a024a4f29db23928d22d3406e1761ef2a1ff9683362ebbe"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.28/Kyon2-0.0.28.dmg"
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
