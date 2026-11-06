class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.11.0/coval-macos-arm64.tar.gz"
      sha256 "57a9b7e74c9947fabb456ea3048807c200dec229369b197a91325629385cbbaa"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.11.0/coval-macos-x64.tar.gz"
      sha256 "f91cb9c1973e076137e6f5144bc88918c7a76a139031c4bb355d75ad6adcdd73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.11.0/coval-linux-arm64.tar.gz"
      sha256 "13312a703560a4fffe8eba2f7d6109534246b69b638b05f26fa361524616c221"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.11.0/coval-linux-x64.tar.gz"
      sha256 "bbba3c994b09a55f6e9d4c39645fe9d97e03a562cdb66ba858dd07c5da5a8200"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
