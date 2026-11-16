cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.10"
  sha256 arm:   "fc7a4cdd55cede1ac65e3cfc53ed808b15abfc507a2d258c2e55ec6471fb59c2",
         intel: "265dabd79d022b46a7b291950852df2bc5b9d3fab196aaa5c314e5e1bf8c01ce"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.10/Kyon-#{version}-macos-#{arch}.dmg"
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
