class Coval < Formula
  desc "CLI for Coval AI agent evaluation platform"
  homepage "https://coval.dev"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.2/coval-macos-arm64.tar.gz"
      sha256 "190c5614fb1f202cb3c2b55f0fa95d99b4874cd4bdf8f7cae1c1e635fef4e788"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.2/coval-macos-x64.tar.gz"
      sha256 "2a9da34dd611f0260eb73623d4aec125c18d0a5b86e84410189bde64068d1dda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/coval-ai/cli/releases/download/v0.7.2/coval-linux-arm64.tar.gz"
      sha256 "81a3001061fa4edc8d93d5751a430f3d59a00cf1e0504a51359286726a299064"
    else
      url "https://github.com/coval-ai/cli/releases/download/v0.7.2/coval-linux-x64.tar.gz"
      sha256 "d5926ca10ac9becee93cff4c6d625e381e52e459102a0779984d24939aedf501"
    end
  end

  def install
    bin.install "coval"
  end

  test do
    system "#{bin}/coval", "--version"
  end
end
