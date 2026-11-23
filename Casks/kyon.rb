cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.6"
  sha256 arm:   "cba21f0d3cfeb9d272d2020a627f07a577349a75bb034e8ea322fe4d2c7db969",
         intel: "ae7f0c3a2d6b7ebf29880c14f2ba9a872e32283eb6dd98447c0eed31ba6a181f"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.6/Kyon-#{version}-macos-#{arch}.dmg"
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
