class Caskvet < Formula
  desc "Read-only supply-chain health report for installed Homebrew casks"
  homepage "https://github.com/breichr/caskvet"

  if Hardware::CPU.intel?
    url "https://github.com/breichr/caskvet/releases/download/v0.1.1/caskvet_v0.1.1_darwin_amd64.zip"
    sha256 "fbcf7a22222b9d8df0bba4687dfd6c7a8e3bce61d1bcfafa418aa93af33289c9"
  end
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/breichr/caskvet/releases/download/v0.1.1/caskvet_v0.1.1_darwin_arm64.zip"
    sha256 "576b9066cf076e58c2079ab651b6e6d9bcc1e6236182c9691ebcb6be64dbaf45"
  end

  def install
    bin.install "caskvet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/caskvet --version")
  end
end
