class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.1.0/coval-macos-arm64.tar.gz"
      sha256 "8eb21eac0e1ec384d204a0d27dbf165a3e7535e15a0bb5b656ea9e55011120f8"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.1.0/coval-macos-x64.tar.gz"
      sha256 "bba5a95e09375aa4bb1e1179ca95b7b7d723a7ebc430e23dde26eed029b7878d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.1.0/coval-linux-arm64.tar.gz"
      sha256 "7c25e060ace2f8a70837f02e948d5025f0ced7681398b1b45732b223db321993"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.1.0/coval-linux-x64.tar.gz"
      sha256 "08563b389c28fe705257c18de72f4c679b804287cdf13fb01d0065729a01dd23"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
