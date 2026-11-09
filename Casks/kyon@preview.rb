cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.90"
  sha256 arm:   "ab7b49e8135846887187c9cd41b589f76979e33a9319b8b5c52d35b1c23dbccc",
         intel: "522dc733f7a388daf432a3d14fc59ce5931452a0efd18561dccb133d609c9e3e"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.90/Kyon-#{version}-macos-#{arch}.dmg"
  name "Kyon Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon"

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
