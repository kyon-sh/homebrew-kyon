cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.86"
  sha256 arm:   "10577dd4c3df151b76764a8eab7bb7c2dc657f10ca0597414631d2498a240d01",
         intel: "f760c29bed16836dd007f32b2049e6d7c430fb44d3850c3ac56f47a3dd8242de"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.86/Kyon-#{version}-macos-#{arch}.dmg"
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
