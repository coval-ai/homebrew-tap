class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.8.3/coval-macos-arm64.tar.gz"
      sha256 "0a67d9512596acc7b28bb9cdba13990bfa8e5189056ca906993ca50addfae948"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.8.3/coval-macos-x64.tar.gz"
      sha256 "a83cb520f5a078a5cf8afcd4797c5c31382d5ebe6ef24d889389dc060c80e432"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.8.3/coval-linux-arm64.tar.gz"
      sha256 "a3383e7c8553ff01b4f253d0adafe759517bf51dc24060805e211014e80c66c2"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.8.3/coval-linux-x64.tar.gz"
      sha256 "fd20e31886845696070f4acfd57370b4be3ace8844a2a4abc5861ea12d5af744"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
