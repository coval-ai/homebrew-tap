class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.8.0/coval-macos-arm64.tar.gz"
      sha256 "7b8f7305181551b15453b227e353eaccbce8386246bdba4beee65058b3a82e91"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.8.0/coval-macos-x64.tar.gz"
      sha256 "524bc08ff3570baf4f4ddf5e3185e2d4a4626d152e0077443c4cf5ef29720faf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.8.0/coval-linux-arm64.tar.gz"
      sha256 "1c62c21061b154da58e5a2393fad61b3a07b15825ab84d3e13ed47e86bbc7608"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.8.0/coval-linux-x64.tar.gz"
      sha256 "e8c2110cef94d67c25c6e992ea4c28299908ce4a771ec3d265d42c22e59f5cae"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
