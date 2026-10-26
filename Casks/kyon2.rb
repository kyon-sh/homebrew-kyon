cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.55"
  sha256 arm:   "0b68233e7f31db2e59326ba094bc4334a04e8fee91cb914aa94bad5f027b33a9",
         intel: "35b1a0f5cddc4022a93c34d73144ba41e7d054805ed7c4133ecc83f01f8a8de3"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.55/Kyon2-#{version}-macos-#{arch}.dmg"
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
