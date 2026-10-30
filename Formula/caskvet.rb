class Caskvet < Formula
  desc "Read-only supply-chain health report for installed Homebrew casks and formulae"
  homepage "https://github.com/breichr/caskvet"

  if Hardware::CPU.intel?
    url "https://github.com/breichr/caskvet/releases/download/v0.2.1/caskvet_v0.2.1_darwin_amd64.zip"
    sha256 "6a1eb0ce37a686dcf4f2faf3caf1b9077740936fe4155689243663ba31761823"
  end
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/breichr/caskvet/releases/download/v0.2.1/caskvet_v0.2.1_darwin_arm64.zip"
    sha256 "72794413d17a68b04fce1ca8ac11841e03a17b1353e7097d8062871b5a57114e"
  end

  def install
    bin.install "caskvet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/caskvet --version")
  end
end
