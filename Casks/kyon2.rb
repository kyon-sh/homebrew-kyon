cask "kyon2" do
  version "0.0.26"
  sha256 "71efe89d12198f5b803fa5b742873ec4c90b16b09b87d93b571245afb57c3108"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.26/Kyon2-0.0.26.dmg"
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
