class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.8.1/coval-macos-arm64.tar.gz"
      sha256 "d004f679d72e9b736d3f051d24b73363579c4a6fc6de8de063114317de8ca7e3"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.8.1/coval-macos-x64.tar.gz"
      sha256 "11f027230de39dbcd676619384e82d4b5a14ca4697f5e7943ceb34007afe585d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.8.1/coval-linux-arm64.tar.gz"
      sha256 "88fbdd01895111b1c13f4fbf08f2f2f917f653123cf71b041768e146a2458ddf"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.8.1/coval-linux-x64.tar.gz"
      sha256 "91b51a3448ab1df304556709b17dce3b255d890e1e1b157bb1823644f0a01f5b"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
