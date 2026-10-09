class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.9.0/coval-macos-arm64.tar.gz"
      sha256 "9a7bf193e387eb9c0cbdbb6a60e26b5a18503852fe40728d6e451b0cb10f6b26"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.9.0/coval-macos-x64.tar.gz"
      sha256 "ced34e66f8e81d71b0e24372cfc9f1230ef637f747896689cc9694dd7f5d8216"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.9.0/coval-linux-arm64.tar.gz"
      sha256 "a7909d09d168002f6965b3a65621717b40a1631ef54fcf5920775c032c5a09ad"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.9.0/coval-linux-x64.tar.gz"
      sha256 "53f273a4271cff19f3294dbc0e8a98c808ef66fe4a5b33c59ac01b58d60107bc"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
