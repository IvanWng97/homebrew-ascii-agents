class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.4.1/pixtuoid-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "027c55af184a375629e1d210d382f4dc6930c9fa2108812e7c37fbe07fe7a9ae"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.4.1/pixtuoid-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "a3459910190c9a153366f7e6202f38eb35be981869ff21dbeef29d241230f5b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.4.1/pixtuoid-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad1eaedb9f39c093a61cc76e36122f8c2e5485fc8185bc2d89fd18768f1d7f73"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.4.1/pixtuoid-v0.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6fadb5dca601fedf9144659886318acfb7ef150477e33f7e5f74c208f4feed68"
    end
  end

  def install
    bin.install "pixtuoid"
    bin.install "pixtuoid-hook"
  end

  def caveats
    <<~EOS
      To start visualizing your Claude Code sessions:
        pixtuoid install-hooks
        pixtuoid run

      Before uninstalling, remove hooks from Claude Code:
        pixtuoid uninstall-hooks
    EOS
  end

  test do
    assert_match "pixtuoid", shell_output("#{bin}/pixtuoid --version")
  end
end
