cask "kyon2@preview" do
  version "0.0.11"
  sha256 "f9ea861cc572a70cf9cb05c142d15d8dcbda1d990cf4b5314d4584a19ff357d5"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.11/Kyon2-0.0.11.dmg"
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
