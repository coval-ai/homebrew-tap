class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.6/coval-macos-arm64.tar.gz"
      sha256 "bcc0376730c9d3595e1f6e9efbb6b3c3cb1c996b315de9f30b9cf5b61aea66df"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.6/coval-macos-x64.tar.gz"
      sha256 "83a2ecc7ebf55bb9851d0bd016422fb84ee006727565c03f4278aebd714e7a9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.6/coval-linux-arm64.tar.gz"
      sha256 "ab78270162e6bd3583d279f99c988f3d17e276e3be1ce3c2c596260589a0454d"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.6/coval-linux-x64.tar.gz"
      sha256 "c796928bc0e97d4af3f6187dd1a962da5c199c7a4f2f6342ed9b05058de35fbe"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
