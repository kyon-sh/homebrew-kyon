cask "kyon2@preview" do
  version "0.0.39"
  sha256 "efde4b66385a4f3311947610df6322c105f2cec6df59b8dfb8f74c11da64ab8e"

  url "https://github.com/kyon-sh/kyon2/releases/download/kyon2-v0.0.39/Kyon2-0.0.39.dmg"
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
