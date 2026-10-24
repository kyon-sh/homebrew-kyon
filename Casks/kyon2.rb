cask "kyon2" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.51"
  sha256 arm:   "0afaf7c61ac4cd5ca40fc24a492f5f042809b7af1667c5b8db923c79668f9847",
         intel: "b6ae5936707018ac688b3d0a3ed1e8a3fcffdc84a66af123ea70a211274b0c85"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.51/Kyon2-#{version}-macos-#{arch}.dmg"
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
