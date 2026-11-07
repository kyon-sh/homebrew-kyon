cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.82"
  sha256 arm:   "8157414074786e01ee81acba5dcd92a6272c3dbeef4b908c937c6f495b7cf924",
         intel: "f45d1e0243ba95ab9e650b41860630404ea8369209430069fa18fae10c2134cf"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.82/Kyon-#{version}-macos-#{arch}.dmg"
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
