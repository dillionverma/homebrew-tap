cask "bitlatch" do
  version "0.3.5"
  sha256 "9a3db4a14ad11630436691509dfa880e2d205e4bc968ea011f3909813922d5d5"

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
