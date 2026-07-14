class NoCoauthor < Formula
  desc "Git hook that strips AI co-author trailers from commit messages"
  homepage "https://github.com/jmtrs/no-coAuthor"
  url "https://github.com/jmtrs/no-coAuthor/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "63710f1e6ddc20960d544e469d5ea7171809e445e58bedabdd77ac4448227b10"
  license "MIT"

  def install
    # install.sh is the standalone POSIX installer already used for the
    # `curl | sh` distribution channel — installed byte-identical here, just
    # renamed to the `no-coauthor` command name. It only ever inspects its
    # argv for a literal "--global"; any other token (including "install") is
    # silently ignored, so `no-coauthor install` and bare `no-coauthor` behave
    # the same as running install.sh directly.
    bin.install "install.sh" => "no-coauthor"
  end

  test do
    system "git", "init", "-q"
    system "git", "config", "user.email", "test@example.com"
    system "git", "config", "user.name", "Test"
    system bin/"no-coauthor"
    assert_predicate testpath/".git/hooks/commit-msg", :exist?
  end
end
