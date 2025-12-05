class BeMyEyes < Formula
  desc "A Terminal User Interface (TUI) for analyzing/ summarizing/ questioning / searching into videos using AI"
  homepage "https://github.com/fboucher/be-my-eyes"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.15/be-my-eyes_0.1.15_darwin_arm64.tar.gz"
      sha256 "53361baa9272f8b71aa5e97d66460c0c60b70265b0a0a44fdd515dca22ca6184"
    else
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.15/be-my-eyes_0.1.15_darwin_amd64.tar.gz"
      sha256 "e14ff15b62bf1ccb8340d3ada84365ba69c5224b4c10551bc087addec7c34385"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.15/be-my-eyes_0.1.15_linux_arm64.tar.gz"
      sha256 "b8fbb3c3659ae34f42e720829968599b6625c9e5754aa5d87953be3ba3d1db83"
    else
      url "https://github.com/fboucher/be-my-eyes/releases/download/v0.1.15/be-my-eyes_0.1.15_linux_amd64.tar.gz"
      sha256 "1fb512cac0df181e3c537833c3f96f0167fe64cdef20606d98bee4569ca67cc5"
    end
  end

  def install
    bin.install "be-my-eyes"
  end

  test do
    system "#{bin}/be-my-eyes", "--version"
  end
end
