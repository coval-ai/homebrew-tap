class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.2.1/coval-macos-arm64.tar.gz"
      sha256 "f36c6887aae267d43954f0728be5a23c32f5d2822d0a8a2386c7b69675247f5a"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.2.1/coval-macos-x64.tar.gz"
      sha256 "da5a9302e7721e32cf31ea588fca54ab415bb3b3e183df91b932c16704f4ffc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.2.1/coval-linux-arm64.tar.gz"
      sha256 "63d5a38df6983a4f811ddbfe8259c6a6469acb9b049465a1262c25391ac956a6"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.2.1/coval-linux-x64.tar.gz"
      sha256 "3a64ea341ca86b3e3e8b2f2efd26b28a716f4f4835cee8a29f80453fb2b12759"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
