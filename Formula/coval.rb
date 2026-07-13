class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.5.0/coval-macos-arm64.tar.gz"
      sha256 "c5be2525f4bc41dc1fa8e6dda16ad645b16098671445584248c7f884a88621b4"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.5.0/coval-macos-x64.tar.gz"
      sha256 "09ecb870589dd580de6682e2625fcd5c0fc10f310184b4add751ebe92fd56375"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.5.0/coval-linux-arm64.tar.gz"
      sha256 "073824f3b293afeadc93b83b3bffca7ee7c5f99c0c3c2bd9bfc434a61fdcf319"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.5.0/coval-linux-x64.tar.gz"
      sha256 "dd9e6d2e1d93089279921045853f43e86b3040dd5628d86639f06b2c8e4f8d77"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
