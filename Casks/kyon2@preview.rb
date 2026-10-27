cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.59"
  sha256 arm:   "a46b1be49da93940325f9e0753cdb7e6d042411268c7717e1d9ad016ff37f969",
         intel: "6f8793fbeab886d6ee80181d922bff7c17e26382b37d88fd5f07ecbfed196c67"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.59/Kyon2-#{version}-macos-#{arch}.dmg"
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
