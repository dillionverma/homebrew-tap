cask "bitlatch" do
  version "0.3.2"
  sha256 "50c7d5fb35091d441d5dd016594b423fedd09b0bfcb7574f585b6e7339f914e7"

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
