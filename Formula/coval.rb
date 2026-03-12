class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.4/coval-macos-arm64.tar.gz"
      sha256 "eb09f7ae7df05f07cd221590cab6ce7793f96f2ce0c206155e8983a404a9bf4b"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.4/coval-macos-x64.tar.gz"
      sha256 "ef61a77fc6bf5f52fb7a41eb112204d97cd70d9b8243b8c612950bcab96be272"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.4/coval-linux-arm64.tar.gz"
      sha256 "8a4de062077d9ab2c490a43a4185b52aaefeeb16fdd2f07457b946100d102dd7"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.4/coval-linux-x64.tar.gz"
      sha256 "58f33b091ef55bc8c9c0c1b28f28a48c9945ddfaf9e682d95190ba067cd2bc1d"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
