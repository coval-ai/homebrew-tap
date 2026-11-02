class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.10.0/coval-macos-arm64.tar.gz"
      sha256 "445d9879a8ff0bcc7fdda9f6034548da12fbc74fe4991151f319c67b24857ba1"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.10.0/coval-macos-x64.tar.gz"
      sha256 "4563b5a57c3232a1c579cff96ea881dd39f5d7b6117d2a04812aee55a400857b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.10.0/coval-linux-arm64.tar.gz"
      sha256 "bdbdd34eb6d90bd195d26a5510fad30de51b764cd0ffe3f4392fc155433a3d06"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.10.0/coval-linux-x64.tar.gz"
      sha256 "a79937efb8bed957f2ac559930bdb9f14eea53a7b3b0b51850ebef827659f526"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
