cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.93"
  sha256 arm:   "e887848a6675533628f2e6bb44c3adf9c0ae13302b9c32ebcf2512def6d61cef",
         intel: "27003089625e0d05424fc97681126bfa4ef4c5ac67c025ed7bdba2f4023a1f63"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.93/Kyon-#{version}-macos-#{arch}.dmg"
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
