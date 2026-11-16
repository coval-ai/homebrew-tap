class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.11.1/coval-macos-arm64.tar.gz"
      sha256 "7dabba45358d317cb7257551740b59ca8f381760dd49df552dd54753f6a73455"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.11.1/coval-macos-x64.tar.gz"
      sha256 "bd3a1234f82e5c2695ff81d9b5587c729df8f6ed2ee6754dadf9572834afe37f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.11.1/coval-linux-arm64.tar.gz"
      sha256 "c85db20bd056d9bc6ab179884257ab6f086ecabd8bee7017450d44c6af4d8ee7"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.11.1/coval-linux-x64.tar.gz"
      sha256 "8be2217f3c9769f1201362db3ab850987eec8b060fd18d312b704c7da2c56ba1"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
