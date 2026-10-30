cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.78"
  sha256 arm:   "0e0c459dc54b166f377aa98f15d6f7c205778505715f93a60118ddaf02468571",
         intel: "4a5f3b755dba636361350a1e46fd932a7e4ae8918dd347e8d924ebff9da3b2e8"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.78/Kyon-#{version}-macos-#{arch}.dmg"
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
