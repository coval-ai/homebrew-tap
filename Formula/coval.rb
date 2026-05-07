class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.13/coval-macos-arm64.tar.gz"
      sha256 "a2eff0334d44aaedec6d4d14aed92bb064aab9c6158d8ca6c6d46c460b987da1"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.13/coval-macos-x64.tar.gz"
      sha256 "072afb85f078276d881ac6be8487cf6211ee2dc1b6118d0dc4036547199cb77c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.13/coval-linux-arm64.tar.gz"
      sha256 "b800e887f27e7137985c1e198c025a2632260e6cb236ddc31c6ceeb60d25ad4e"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.13/coval-linux-x64.tar.gz"
      sha256 "5fef1e95997c23584a4735ef4bb07c07ed090c4c90c0a6846ca6ce58ecfa4e13"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
