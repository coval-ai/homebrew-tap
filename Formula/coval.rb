class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.4.1/coval-macos-arm64.tar.gz"
      sha256 "c8c632196c52a6d20a4e30aa3fb3138c510cd326c9a58e1641fae56f843d58d7"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.4.1/coval-macos-x64.tar.gz"
      sha256 "72b4e6f75da6af621afbb5e94277132545072ce6b9f46531b2be22e4a70558b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.4.1/coval-linux-arm64.tar.gz"
      sha256 "9e3c0b5b40dee7da98dfbdffab01107d4a6294419fe78743ee08e77f32abe330"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.4.1/coval-linux-x64.tar.gz"
      sha256 "e9c67aaeb15f33184c1bacc867dcc58b7560c73ca1525989835439b9381e3a7b"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
