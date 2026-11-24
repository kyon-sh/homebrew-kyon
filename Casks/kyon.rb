cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.22"
  sha256 arm:   "b2fe0f83f4179ba84491c6f6f1267454edea2f173af44e5197136d1183eabefb",
         intel: "e298d9eeaeb7c0e1cff7d8abdf89c29f02368651545e9527ff901c06c1b24ef9"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.22/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon@preview"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
