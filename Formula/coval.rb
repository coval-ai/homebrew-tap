class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.3/coval-macos-arm64.tar.gz"
      sha256 "40671361c372dbc22f8f7b4ee96b344119d3cd3612986aaa377d2340b4433bd9"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.3/coval-macos-x64.tar.gz"
      sha256 "49ed668001914156d66578695c691c585f068e38e08e58d6e8717e3f28dba328"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.3/coval-linux-arm64.tar.gz"
      sha256 "8ebd699cbd24557e1a6329675d2616b8d3576d6d41192140cd1a7ed93ad31991"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.3/coval-linux-x64.tar.gz"
      sha256 "1e59251db0389ea494a46e857495b3c5940b425d60815aed655c2f1c824eae6a"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
