cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.52"
  sha256 arm:   "49c3e513afe28bbeb4dfd28594075ca0e9f26e118f6c5d3973ac6d3131f4f157",
         intel: "3a5ff10092ae41539622a85f8b0277339e06b35a3a8d9a9244459ebac9953d40"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.52/Kyon2-#{version}-macos-#{arch}.dmg"
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
