cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.87"
  sha256 arm:   "53e92808af83e3647d4e8854c4041aa6a37ea9676ea66176ef4d4cc287c02f35",
         intel: "96dab7a81b68412339d4d3b5bfb6bb35bcc16b1860b481e8b346b5042cc237d5"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.87/Kyon-#{version}-macos-#{arch}.dmg"
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
