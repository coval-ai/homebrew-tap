class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.7/coval-macos-arm64.tar.gz"
      sha256 "29fe14f4be328adfbaa5b248d55f2655c99aad351e43cc6fc5b114507447e7b3"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.7/coval-macos-x64.tar.gz"
      sha256 "1dafb1c097dff72467ef9d686f5f88cfe17d6e3c210e5716696829f917929790"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.7/coval-linux-arm64.tar.gz"
      sha256 "a709e596e9f89d456ee12d6991d970fb6151e4d42b628122dc0910c2c7d4c5b2"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.7/coval-linux-x64.tar.gz"
      sha256 "3a629754a9f8a2d50c77bc79cc1225c4b1ce4185c9c7d5b82979a8353ef10c32"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
