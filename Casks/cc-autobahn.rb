cask "cc-autobahn" do
  version "0.9.0"
  sha256 "6640fc2d2da3ffee715d2d853bcba2b673820fb20f121ce6ffee5f2fc8b61b46"

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
