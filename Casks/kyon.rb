cask "kyon" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.7"
  sha256 arm:   "3c5b6ba1550a9d9119d400dd9579ae3ef8e9d1161efd8c6ada616e71bd7629b6",
         intel: "af3367d25621a03f80d8a48dc150d9b1023adc8fbb85300b8dc316372528dd6a"

  url "https://github.com/kyon-sh/kyon/releases/download/kyon-v0.1.7/Kyon-#{version}-macos-#{arch}.dmg"
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
