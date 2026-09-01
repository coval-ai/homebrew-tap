class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.4/coval-macos-arm64.tar.gz"
      sha256 "9c416c87b3ee81fd450d2b0f567867b6f952fdaf9f1fe741e39504fc78977bb6"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.4/coval-macos-x64.tar.gz"
      sha256 "8776839943c9e0563d43ef09b54ad28e00a24e392e499d0ed8f97e363fba3d07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.4/coval-linux-arm64.tar.gz"
      sha256 "ca0872122a5ce8e712229751ec7449cdc4a37c9960e88c07a250da1ddacdac83"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.4/coval-linux-x64.tar.gz"
      sha256 "6a76ac6d174d3b42b5371f6818aeef3f8d230ef260386f6d945c6fc4025e9f1f"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
