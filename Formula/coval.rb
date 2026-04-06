class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.8/coval-macos-arm64.tar.gz"
      sha256 "28f1d814b23ecad988c7a9f95b1e63a4f7a75628b2e1f88db2b53f01162184f8"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.8/coval-macos-x64.tar.gz"
      sha256 "abfe578da4ceb19527036bc04a371b315769281f7968bb60ca1e57fcc3c2072c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.8/coval-linux-arm64.tar.gz"
      sha256 "0a99d96367ba8acbadc652ecbbb75a242aa13cf3c15cb5c4e39a3b2fcf1604c3"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.8/coval-linux-x64.tar.gz"
      sha256 "daf8002437ba9ea2022da444d32b6d6479778931f92433bbfd456c91c5f9e180"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
