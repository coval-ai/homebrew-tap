class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.1/coval-macos-arm64.tar.gz"
      sha256 "2a19f5339dcace50011a814aa476ac2801af552cc03b41f6e322c55c54227da0"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.1/coval-macos-x64.tar.gz"
      sha256 "117cef6f04e28a921ca72f454e48a978dbcc0f3c1e70d07015142918fff95791"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.1/coval-linux-arm64.tar.gz"
      sha256 "9cd31faf1d15efa36a2f87ec7379914cca697b9548ea40db4c583798a7152b2c"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.1/coval-linux-x64.tar.gz"
      sha256 "2f08368a2b29cad3b28ac8f6a77be40ea01d43ba08cf984e67eeec66d5780aad"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
