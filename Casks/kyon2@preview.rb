cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.73"
  sha256 arm:   "02a846c0bc5dce75440c0ef5e093c3d66a113be64a108a06c5d87c11da178fe6",
         intel: "52221432ba1aaeb5ea1570de02507ba05f6a641e7f4912ac1105cfd7a159e083"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.73/Kyon2-#{version}-macos-#{arch}.dmg"
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
