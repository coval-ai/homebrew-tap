class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.5/coval-macos-arm64.tar.gz"
      sha256 "b7758709ec9db32e87fd7dd1486bcb7164cf214b46b4a19d9fac4b0262730138"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.5/coval-macos-x64.tar.gz"
      sha256 "693cec10c2d7b0abdcb7773ef8a221c15e6487c56e05674d658d7972bcec2e6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.5/coval-linux-arm64.tar.gz"
      sha256 "4ff4a60a98916cb5f4f840f40585463b184c65a4762f88ce56119088e6d7290c"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.5/coval-linux-x64.tar.gz"
      sha256 "75b51f6b95cb9a388445a407039378b166a0afed05a41ca2b8682b50dcd62a14"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
