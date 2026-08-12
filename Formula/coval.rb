class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.0/coval-macos-arm64.tar.gz"
      sha256 "6b9b6d09e18f002b13062f7661f44ef7d9102dc2742d1cff2e9b9a6b37d8b153"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.0/coval-macos-x64.tar.gz"
      sha256 "282aa0716ef5e4d5ee299a21383a169460aa7abfa453bcdf29a7058b07a2b263"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.0/coval-linux-arm64.tar.gz"
      sha256 "e62d73c485e3566ba2857b7e678f9878a5b83c23ad7dee78efeda6e52a4af6b5"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.0/coval-linux-x64.tar.gz"
      sha256 "e4e44da108674f503e0c4ae2b09937337b9aa500203b4a25834cf36dfeecb48d"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
