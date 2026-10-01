cask "bitlatch" do
  version "0.3.1"
  sha256 "eb38ceacc2bd818dc833499e10ac2086e4066552d07548c89466454e342b6858"

  url "https://github.com/dillionverma/latch/releases/download/v#{version}/Bitlatch-#{version}-mac-arm64.dmg",
      verified: "github.com/dillionverma/latch/"
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
