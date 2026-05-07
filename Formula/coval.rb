class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.12/coval-macos-arm64.tar.gz"
      sha256 "604bb30c135db7bc4d3d17d7dce42ea7d28984d82a8e3204dcf0e90ad615669b"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.12/coval-macos-x64.tar.gz"
      sha256 "ddaa7bc2d020bc1855781f6bf77a58ca93f5d35040dc0806d03310de4a293463"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.12/coval-linux-arm64.tar.gz"
      sha256 "6a279e952a238354820d3ed984a4ea36ea41b9f19c3c374247629d7f2cbd86d1"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.12/coval-linux-x64.tar.gz"
      sha256 "426551d3e48e7e614c222dbfc33c641111588d5b7ce22d4317b1339a6ade016a"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
