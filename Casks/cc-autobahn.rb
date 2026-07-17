cask "cc-autobahn" do
  version "0.5.2"
  sha256 "aa831ab4cdb01d11e22ceff326a2951203ee41864f95abbef516503f49d551a1"

  url "https://github.com/jmtrs/cc-autobahn/releases/download/v#{version}/cc-autobahn_#{version}_universal.dmg"
  name "cc-autobahn"
  desc "Mercedes W203 amber trip-computer for Claude Code token usage"
  homepage "https://github.com/jmtrs/cc-autobahn"

  depends_on macos: :catalina

  app "cc-autobahn.app"

  caveats <<~EOS
    cc-autobahn is unsigned (no Apple Developer ID). Gatekeeper blocks the
    first launch — either right-click the app → Open, or run:
      xattr -dr com.apple.quarantine /Applications/cc-autobahn.app
  EOS
end
