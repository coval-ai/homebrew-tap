class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.9.1/coval-macos-arm64.tar.gz"
      sha256 "d1c2ece8a1e806cc47c6595bfba9931afc36f10bc7934ce8daa8ff946890d1d2"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.9.1/coval-macos-x64.tar.gz"
      sha256 "1dc56655045496a0fcd7e78d59565e06e0bdbe09c7e1565f7846b9e8442bb2c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.9.1/coval-linux-arm64.tar.gz"
      sha256 "7f71a0e139c7ea72711542154aa3be7e924b634f97851ca7498e5d682e50037c"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.9.1/coval-linux-x64.tar.gz"
      sha256 "b96e5253050515adb5c59d55cc0e07aa639e6de0be041a1d44dcb70026ed9eae"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
