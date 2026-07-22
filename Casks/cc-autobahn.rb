cask "cc-autobahn" do
  version "0.10.4"
  sha256 "32615e113bca7a174dfa292dba519b2e131a97c6c5b1f18ad748085767c88f1b"

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
