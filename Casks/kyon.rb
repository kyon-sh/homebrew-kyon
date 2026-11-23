cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.18"
  sha256 arm:   "bb252760df884ecbf7dcbbb1d6e391f3be4d52fe695645e45ab59ce684a3cbf3",
         intel: "5eec7ecc4ee6cc7dfa4bc766b65f83d19368f2de59acc82ef8170af3166dfec0"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.2.18/Kyon-#{version}-macos-#{arch}.dmg"
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
