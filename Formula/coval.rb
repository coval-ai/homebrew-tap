class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.4.0/coval-macos-arm64.tar.gz"
      sha256 "6f3bf1009ddfb2a3b8437d37c8d8422175b3ae40932e215cffaf68c6c49ddc6d"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.4.0/coval-macos-x64.tar.gz"
      sha256 "de09b4d3aa4c3c0da7cb71dc4262d4cd220241fccf7f381fe16d0666c1274e9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.4.0/coval-linux-arm64.tar.gz"
      sha256 "81d52c705433638398bfcb7e60142107aa89bc3f656e9a8d84ba3fe0d9f26ee9"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.4.0/coval-linux-x64.tar.gz"
      sha256 "27462ffdae58d3408dcb55a15d3ed4d33dd0d7db569390dfb8bf6a8e8c9f0947"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
