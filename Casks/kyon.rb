cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.24"
  sha256 arm:   "2a5b00ecbf85d3aa0d090b660c4243b0778cff4275ff4edfc495d05f93348fa7",
         intel: "20a290bf3553b2685040bd3aab54c3b1b8e150f0ea30bfd6339af8a7108c318b"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.24/Kyon-#{version}-macos-#{arch}.dmg"
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
