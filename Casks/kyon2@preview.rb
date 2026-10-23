cask "kyon2@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.46"
  sha256 arm:   "3f35113a3e4b810a98e5e0357d90a0982338f9695a5f4c3f8274493b0cbdcd9e",
         intel: "ee2423de6a98bd31121869b89f80fffe8ffbd813c76007b152cc714c6959ab4f"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.46/Kyon2-#{version}-macos-#{arch}.dmg"
  name "Kyon2 Preview"
  desc "Terminal with blocks, kept sessions and an agent beside every shell"
  homepage "https://kyon.sh"

  depends_on macos: :big_sur
  conflicts_with cask: "kyon2"

  app "Kyon.app", target: "Kyon2.app"

  zap trash: [
    "~/Library/Application Support/com.ryowave.kyon",
    "~/Library/Caches/com.ryowave.kyon",
    "~/Library/Logs/com.ryowave.kyon",
  ]
end
