cask "kyon" do
  version :latest
  sha256 :no_check

  url "https://github.com/kyon-sh/kyon/releases/latest/download/Kyon.dmg",
      verified: "github.com/kyon-sh/kyon/"
  name "Kyon"
  desc "Terminal with a built-in editor, remote work over SSH, and local AI"
  homepage "https://kyon.sh/"

  # Kyon updates itself, so Homebrew is how it arrives rather than how it stays
  # current. `version :latest` follows the newest release on every install; a
  # release workflow rewrites this file with a pinned version and checksum once
  # a build is published, and `brew upgrade` compares versions from then on.
  auto_updates true
  depends_on macos: :big_sur

  app "Kyon.app"

  zap trash: [
    "~/Library/Application Support/dev.kyon.Kyon",
    "~/Library/Caches/dev.kyon.Kyon",
    "~/Library/Preferences/dev.kyon.Kyon.plist",
    "~/Library/Saved Application State/dev.kyon.Kyon.savedState",
    "~/.kyon",
  ]
end
