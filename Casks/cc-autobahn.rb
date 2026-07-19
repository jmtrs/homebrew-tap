cask "cc-autobahn" do
  version "0.8.1"
  sha256 "2601bce2a6ab43dd368e80dce950b0ea541e345e5dc0a260d4449abdfeeed8f6"

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
