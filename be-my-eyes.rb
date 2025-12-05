class BeMyEyes < Formula
  desc "A Terminal User Interface (TUI) for analyzing/ summarizing/ questioning / searching into videos using AI"
  homepage "https://github.com/fboucher/be-my-eyes"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.14/be-my-eyes_0.1.14_darwin_arm64.tar.gz"
      sha256 "23fa32a8c88767be97671c637f682470de7eba9f2e6a07614e499c6d6238e90a"
    else
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.14/be-my-eyes_0.1.14_darwin_amd64.tar.gz"
      sha256 "b208f849f71370526302fed9431964b7a0c04ff04da4fddd6e7b1abd68ed5572"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.14/be-my-eyes_0.1.14_linux_arm64.tar.gz"
      sha256 "7078953213df8eac2a8bb1c5618a360d63a17346f1982d362bcb91863334aa27"
    else
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.14/be-my-eyes_0.1.14_linux_amd64.tar.gz"
      sha256 "e5a2973d8d70ad7234d32beda8facf7e6214c2c93ebfec85fd40c72d5e30961a"
    end
  end

  def install
    bin.install "be-my-eyes"
  end

  test do
    system "#{bin}/be-my-eyes", "--version"
  end
end