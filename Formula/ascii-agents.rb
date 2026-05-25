class AsciiAgents < Formula
  desc "Terminal pixel-art office for AI coding agents"
  homepage "https://github.com/IvanWng97/ascii-agents"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.2.0/ascii-agents-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d07416be00ff0fae6537cf2830889543a6ad66b17be09363cecef8181cb41bdc"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.2.0/ascii-agents-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "33b6bc078e9f189fa3a3fa1843e6d05625adb530bc83b2e9f6fdaada71685ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.2.0/ascii-agents-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3bfb71bdcc5e161c13c3f89a0ca3a863b83ecb29831ef2218fc5fd058c2f176"
    end
    on_intel do
      url "https://github.com/IvanWng97/ascii-agents/releases/download/v0.2.0/ascii-agents-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16bcd60591ff9ccea0a003d53075dc5166070cef930644e6cd77d116561f379b"
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
