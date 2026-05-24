class AsciiAgents < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/ascii-agents"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.0/ascii-agents-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c350275269f26da42b1dd5a6a0d151d280fe9c0e0ec9e4b8dc54b7133822944"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.0/ascii-agents-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "df661e9386e2b4a66104478efa48885106312243e5ca8d5d354df8bc5eb70918"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.0/ascii-agents-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be3f76a3ed9a10c1b91a59dc6c96053f306543d3e4e5ad56d9534bbac54cff3f"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.1.0/ascii-agents-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56c880e71d1cf4bf79066d4c916007978d9d71e8cbf494a80455221d3bb097a0"
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
