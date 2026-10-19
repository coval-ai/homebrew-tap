class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.9.2/coval-macos-arm64.tar.gz"
      sha256 "ae69adb78d75a29247e4cb90998adcbfa5c86d15aeb8b22e73f3638b5495bff4"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.9.2/coval-macos-x64.tar.gz"
      sha256 "cca32ef2ce5824bc06daefbb1b8ad4ef9d6f093364aad169ee9d284bfd70059c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.9.2/coval-linux-arm64.tar.gz"
      sha256 "3bdb2e9ce35130c399ab294bcf9df13aefdf8f5020bea8e83b58005743cab63f"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.9.2/coval-linux-x64.tar.gz"
      sha256 "9934170acdafe14e3f5a73d1a65cbad2601427a10cffb36bf059e5848eb35a71"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
