# jmtrs/homebrew-tap

Homebrew tap for CLI tools maintained by [jmtrs](https://github.com/jmtrs).

## no-coauthor

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
