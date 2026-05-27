class Pixtuoid < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/pixtuoid"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.4.0/pixtuoid-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f641235365a87577a109b3931df95cea659b17d34faa9d14ef0529afe274c35c"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.4.0/pixtuoid-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "b86cf1972d7d7775aa9329c15b87e29da41efa98039cabb4486b2cf51b5dc55c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.4.0/pixtuoid-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0741961c1a5bcbeb83df33966e9968aa43ac830f59091b840a8fd08ca62624a7"
    end
    on_intel do
      url "https://github.com/IvanWng97/pixtuoid/releases/download/v0.4.0/pixtuoid-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97ad410872c7b1e31f2627049f1dd0d1cf5e01572c16eafe365f65c7fe5fc4fd"
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
