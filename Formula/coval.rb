class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.11/coval-macos-arm64.tar.gz"
      sha256 "87b571d394b5c7791ab0981c2ea1a465ca320e85c6d81de8ca51faa99c45db62"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.11/coval-macos-x64.tar.gz"
      sha256 "612afda5fc9956a1178a9b0aedad6c370b8b5b7a629517c6e2de347223b013fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.11/coval-linux-arm64.tar.gz"
      sha256 "be1cd84f5596adc64ffbe32b5e42863530bc5bf80e6ab2d35eaf621d4b018223"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.11/coval-linux-x64.tar.gz"
      sha256 "052c4d68adaea424a8eddccf3fc7c1045677fe983abb567e31c183d3567fe34e"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
