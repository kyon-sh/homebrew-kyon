cask "kyon2" do
  version "0.0.4"
  sha256 "baad016666f7998d0cbd497026d8e5597d99d76afa2418a6c8e71d3985e92b8f"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.4/Kyon2-0.0.4.dmg"
  name "Kyon2"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
