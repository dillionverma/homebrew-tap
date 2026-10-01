cask "bitlatch" do
  version "0.3.4"
  sha256 "7f46384e9318bbe30458d63f3ec21feccb806a5e6c73bc6bb67877507db0ecb5"

  url "https://github.com/dillionverma/bitlatch/releases/download/v#{version}/Bitlatch-#{version}-mac-arm64.dmg",
      verified: "github.com/dillionverma/bitlatch/"
  name "Bitlatch"
  desc "Modern, unofficial Bitwarden client"
  homepage "https://bitlatch.app/"

  depends_on arch: :arm64
  depends_on formula: "bitwarden-cli"
  depends_on macos: :sonoma

  app "Bitlatch.app"

  caveats <<~EOS
    This preview is not notarized. If macOS blocks it, open
    System Settings > Privacy & Security > Open Anyway.
  EOS
end
