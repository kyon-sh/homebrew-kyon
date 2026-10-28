cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.61"
  sha256 arm:   "bf14f36f640744ddf4fcbf7e51894d0c7afd57d28eb85ef89234ecc0050cb88d",
         intel: "0199d3388ee2c373b8667eca825e27c37a87ed4f7081bbf47f1bbe357c893014"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.61/Kyon2-#{version}-macos-#{arch}.dmg"
  name "Kyon2"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon2@preview"

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
