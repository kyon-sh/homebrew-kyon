cask "kyon@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.84"
  sha256 arm:   "258e0941443e9ccacb6aa3ed43fef551bc349bba12cf3dc83d366bb97b814023",
         intel: "5e8a5f5ca9418437646aded0d608d5b2c76dba58ae52f6519edbe7c535738d50"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.0.84/Kyon-#{version}-macos-#{arch}.dmg"
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
