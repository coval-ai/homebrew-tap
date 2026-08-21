class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.1/coval-macos-arm64.tar.gz"
      sha256 "3a79d3997c95c5dfc9ed32e8fc8d9bd97c1dbef4f7a8263bc26334821c7bc03a"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.1/coval-macos-x64.tar.gz"
      sha256 "2511eb22dd1847949e617dd82ed26fc77095d0e95c48473edf6ddac0ada551eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.1/coval-linux-arm64.tar.gz"
      sha256 "c345344afd84386b9d68a826ba1ad490a41477d829ccd036a9f512d4eddb1820"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.1/coval-linux-x64.tar.gz"
      sha256 "e557a842501b4873c7bfb5468b57eacd6478dd7433a8b432940befff2cf64309"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
