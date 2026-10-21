cask "kyon2" do
  version "0.0.38"
  sha256 "89e2c86a3c3d62541651151f3d1a8e272c89153b91f7f3ed7d6a9bd8aee689a2"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.38/Kyon2-0.0.38.dmg"
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
