cask "kyon2@preview" do
  version "0.0.25"
  sha256 "343a4be23bf787e1cf6d08cd27ee83266c7884b331ac5a948412e05834fcdee0"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.25/Kyon2-0.0.25.dmg"
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
