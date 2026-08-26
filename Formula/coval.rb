class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.3/coval-macos-arm64.tar.gz"
      sha256 "754aa87ea638ebc5b52294e2f118fb4c937fb584948f458816191d83e830cb09"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.3/coval-macos-x64.tar.gz"
      sha256 "bd5d44f6eba3a0c53c90c31bdf9256e914f410f4fbadd8a7c35602b0ad04206b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.3/coval-linux-arm64.tar.gz"
      sha256 "7217a787fe0e5989d4bf7acaadb668fabdea91cb80bb545d67fdffbd867f879a"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.3/coval-linux-x64.tar.gz"
      sha256 "4eea0475034f6321922a88eb34a80188af9f15f5b7be87d247a032470fe59c7f"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
