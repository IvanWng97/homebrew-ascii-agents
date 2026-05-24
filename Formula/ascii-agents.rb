class AsciiAgents < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/ascii-agents"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.2/ascii-agents-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "903cf3fda599b66bfb313cea3b933ff39204971bcb75e509d84ffc3054c3b4d4"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.2/ascii-agents-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "e5f708b9eb913a2ee4986f8748bf49c9f6fa3adbcb9406b3a0cca5f146bf29be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.2/ascii-agents-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90b5e192ad4787564b2a7ca63a00d5bc165002cedf9819324da2e8de3e118220"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.2/ascii-agents-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "317d52fca621dff8bf479ff0d0ce2cb1f8cd11959ac9a58f03cd4b6c61242d02"
    end
  end

  def install
    bin.install "ascii-agents"
    bin.install "ascii-agents-hook"
  end

  def caveats
    <<~EOS
      To start visualizing your Claude Code sessions:
        ascii-agents install-hooks
        ascii-agents run

      Before uninstalling, remove hooks from Claude Code:
        ascii-agents uninstall-hooks
    EOS
  end

  test do
    assert_match "ascii-agents", shell_output("#{bin}/ascii-agents --version")
  end
end
