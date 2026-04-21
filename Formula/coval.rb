class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.10/coval-macos-arm64.tar.gz"
      sha256 "713322e9573d88a325a46b98d13999eb7a4518948881e0d7517e4070dd44a1aa"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.10/coval-macos-x64.tar.gz"
      sha256 "1e5a90772992101fcc60ce4504c2682fdb04cd862698be172c28860671fb4898"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.3.10/coval-linux-arm64.tar.gz"
      sha256 "b487e7cee0d8642b3ac4dcdeca64392fb0ea96d1020f7cc46c40e807843d2a6d"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.3.10/coval-linux-x64.tar.gz"
      sha256 "15d822b915ebb7860c0032a8d7ea8f9a46fab025782d9b651c12ba3c4b96f105"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
