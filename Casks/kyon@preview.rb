cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.18"
  sha256 arm:   "5d3469567b19bd0a3324eadd31e53883f371990d70477f59fa417dfc731b0878",
         intel: "045c77ac4935ad595160017ced51ef8caf21cd463b376dbb01eca5ab03b6781c"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.18/Kyon-#{version}-macos-#{arch}.dmg"
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
