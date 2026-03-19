class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.5/coval-macos-arm64.tar.gz"
      sha256 "b1e8056c6b0ef83a1381977b660714da1eb9a27cf071c2c2d5200f8a324db91c"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.5/coval-macos-x64.tar.gz"
      sha256 "3370cece9ea10c95bb024567e25dd924966b5e74e7b3e1bbde4d1f27cc8354bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.5/coval-linux-arm64.tar.gz"
      sha256 "1ad0ec53d003627d6ef84555232887f7d10149dec295127c12eefe291028ec94"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.5/coval-linux-x64.tar.gz"
      sha256 "9588f6c7a68c393da20a1a77e3b097c402e42437e9321622022e6dfa8df65d2a"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
