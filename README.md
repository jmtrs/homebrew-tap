# jmtrs/homebrew-tap

Homebrew tap for tools maintained by [jmtrs](https://github.com/jmtrs).

## cc-autobahn (cask)

Mercedes W203 amber instrument cluster for Claude Code token usage, living in
the macOS menu bar. Universal build (Apple Silicon + Intel).

```bash
brew install --cask jmtrs/tap/cc-autobahn
```

The build is unsigned, so Gatekeeper blocks the first launch: right-click the
app → Open, or `xattr -dr com.apple.quarantine /Applications/cc-autobahn.app`
(Homebrew prints the same caveat on install). See
[jmtrs/cc-autobahn](https://github.com/jmtrs/cc-autobahn).

The cask (`Casks/cc-autobahn.rb`) is updated automatically on every
cc-autobahn release — see that repo's `.github/workflows/release.yml`.

## no-coauthor (formula)

Git hook that strips AI `Co-Authored-By:` trailers (and known AI-generated
banner/footer lines) from commit messages, without needing Node.js installed.

```bash
brew install jmtrs/tap/no-coauthor
no-coauthor install          # per-project
no-coauthor install --global # every repo on this machine
```

This wraps the same POSIX shell hook used by the `curl | sh` install method
of [jmtrs/no-coAuthor](https://github.com/jmtrs/no-coAuthor) — see that repo
for the Node.js CLI (`npx @aggc/no-coauthor`), `.no-coauthorrc.json` config,
uninstall/status/check commands, and the pre-commit framework integration.

The formula (`Formula/no-coauthor.rb`) is updated automatically on every
`no-coAuthor` release — see that repo's `.github/workflows/release.yml`.
