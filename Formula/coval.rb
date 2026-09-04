class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.8.2/coval-macos-arm64.tar.gz"
      sha256 "8591e18d075d822864ba26f51d0783dfef1f7dfe97e520c66842e0d0c6a28bdc"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.8.2/coval-macos-x64.tar.gz"
      sha256 "8b3261e9c4da0c62328bd63a287c95a1a699c8e53368e2ae4c726d59a1f15778"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.8.2/coval-linux-arm64.tar.gz"
      sha256 "b19dd0ef0a4434a3356a7dd0562fe24c4f8f563a6e39bd49cfb7e0c292264b65"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.8.2/coval-linux-x64.tar.gz"
      sha256 "1f92bc67756d3bbb8df33c11f4791064739c6f22d0288de9fa701a1e9fd23b36"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
