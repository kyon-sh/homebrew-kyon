cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.13"
  sha256 arm:   "ed1de780f18af8d2aafbb4997249a4831c3188a31267e8e933776b999d774d1a",
         intel: "dc407dc35552fb018f723aa628581558cbe0c65ed1505349b87806d772f09c4b"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.13/Kyon-#{version}-macos-#{arch}.dmg"
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
