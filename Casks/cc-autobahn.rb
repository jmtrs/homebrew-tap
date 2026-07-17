cask "cc-autobahn" do
  version "0.4.0"
  sha256 "67f5b27029ebd3e44ed2c89d86b7ae1f1b6effbdb5cbe53ded471c1cc6d90424"

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
