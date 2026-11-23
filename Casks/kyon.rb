cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.5"
  sha256 arm:   "041b3720a7f3245cf8b79535e0a9be7e0bace6205bec9ef8a809af3ba74f5712",
         intel: "849b90dc718eec705f5cce102f3f191aafae2cd1e452d0ffb054ddc7514394fd"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.5/Kyon-#{version}-macos-#{arch}.dmg"
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
