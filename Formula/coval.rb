class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.0/coval-macos-arm64.tar.gz"
      sha256 "5f6dc065d9449a02edb888334c2d9c29fbf5f0f5a8bab4ecda910ea9934ed778"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.0/coval-macos-x64.tar.gz"
      sha256 "cd5395e3267c4d712342a9b46bd27f9e08b970da133d46d3316864a1fb475624"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.0/coval-linux-arm64.tar.gz"
      sha256 "8ea43b01bfbb7cc57af6804399eba8ce2729f95106b836abca2afe43aaee6bd8"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.0/coval-linux-x64.tar.gz"
      sha256 "f969075f4b3e40b2567f918a29766b8986c09d25f036684aae62c2e394f78d46"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
