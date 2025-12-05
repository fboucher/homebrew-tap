class BeMyEyes < Formula
  desc "A Terminal User Interface (TUI) for analyzing/ summarizing/ questioning / searching into videos using AI"
  homepage "https://github.com/fboucher/be-my-eyes"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.14/be-my-eyes_0.1.14_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64"
    else
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.14/be-my-eyes_0.1.14_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.14/be-my-eyes_0.1.14_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    else
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.14/be-my-eyes_0.1.14_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
    end
  end

  def install
    bin.install "be-my-eyes"
  end

  test do
    system "#{bin}/be-my-eyes", "--version"
  end
end