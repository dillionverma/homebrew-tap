cask "bitlatch" do
  version "0.3.3"
  sha256 "7804685c6d05ff2b4f579f3beef197ad966207e8979d9db95e044d45f7852653"

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
