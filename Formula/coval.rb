class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.2.0/coval-macos-arm64.tar.gz"
      sha256 "14dcce72b1da0e1f4ccc03a98ff716838824c43a42af9797a505714015ea50e7"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.2.0/coval-macos-x64.tar.gz"
      sha256 "6e81a292f702cc57e8ce5aed6fd284a61343680e961ce545d7c7cdd35b8a58ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.2.0/coval-linux-arm64.tar.gz"
      sha256 "202e80a16d33e6aa34fca8b7aefa964ea41687932c5c56062e1517202b52c5a0"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.2.0/coval-linux-x64.tar.gz"
      sha256 "2821c528323d8a2132107a29f4de7f62b72c6fd563299f6275041fa52189512d"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
