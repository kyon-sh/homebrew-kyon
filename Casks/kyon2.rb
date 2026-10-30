cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.75"
  sha256 arm:   "e3751e969a6c79c2ec77e99058b44a00930c6da737d01d1fd0eefba823354fa9",
         intel: "f5a0d922d99012167ea302179d2579f052b3059e297d352389c958aac48db734"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.75/Kyon2-#{version}-macos-#{arch}.dmg"
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
