class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.1.1/coval-macos-arm64.tar.gz"
      sha256 "a20fe5e8bede777d5c95c4932da4a484f2d0f14522874d0151b0984ab9f148a3"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.1.1/coval-macos-x64.tar.gz"
      sha256 "12eb73e38ddaca868502821cbce0786db3819ba6b8fc88239e55d38869e73a53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.1.1/coval-linux-arm64.tar.gz"
      sha256 "82cfb0a1b7338bc36ed5270e791d7bf6f1991f569ddfdaa6cd0588d70cfbda97"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.1.1/coval-linux-x64.tar.gz"
      sha256 "2039982922c92fe1ad463dd0a59a2be32ac0fd8a17f66b48a068e1045c079431"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
