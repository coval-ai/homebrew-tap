class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.9/coval-macos-arm64.tar.gz"
      sha256 "3b230e64c2a8feb92dc383818a48f88673883242794b1b67c429947d7b56db0a"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.9/coval-macos-x64.tar.gz"
      sha256 "0af0e326573311a63b12003925d80707f195a683a550843bbc361cfc825abd2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.9/coval-linux-arm64.tar.gz"
      sha256 "775a73a299392a9a68cb48a7ba23fdb75f89b36dcf15b6809a723426b5968e0a"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.9/coval-linux-x64.tar.gz"
      sha256 "aea90c527c97b6bcfab89def72a15936f9be8bc57eae2a12c7884d0b044239ea"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
