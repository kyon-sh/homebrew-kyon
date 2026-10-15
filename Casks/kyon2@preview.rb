cask "kyon2@preview" do
  version "0.0.21"
  sha256 "67cb41ed8f8da8cf1e05bf60c4e88a1f352e8b66b5e0f2199371f05c2ab0b459"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.21/Kyon2-0.0.21.dmg"
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
