class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.2/coval-macos-arm64.tar.gz"
      sha256 "e86c5bdedcd753745d89cccbe874386d04016a112eb11277140408b842fdfadb"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.2/coval-macos-x64.tar.gz"
      sha256 "e4d67ecd393d3b73c4e76fec1820225844ca3e4d0913d06709a6767bf2fbb6d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.2/coval-linux-arm64.tar.gz"
      sha256 "ca8374f68355a1c340cd957548f21c513fd51e15f1ef87f99523c995f017db79"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.2/coval-linux-x64.tar.gz"
      sha256 "8eb2fc60bd9022c381e02bbe5a871445dd251b1f022953396399a63aac7cdcf4"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
