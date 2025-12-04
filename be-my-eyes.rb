class BeMyEyes < Formula
  desc "A Terminal User Interface (TUI) for analyzing/ summarizing/ questioning / searching into videos using AI"
  homepage "https://github.com/fboucher/be-my-eyes"
  version "0.1.13"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.13/be-my-eyes_0.1.13_darwin_arm64.tar.gz"
    else
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.13/be-my-eyes_0.1.13_darwin_amd64.tar.gz"
    end
  end

  def install
    bin.install "be-my-eyes"
  end

  test do
    system "#{bin}/be-my-eyes", "--version"
  end
end
