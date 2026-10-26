class Caskvet < Formula
  desc "Read-only supply-chain health report for installed Homebrew casks and formulae"
  homepage "https://github.com/breichr/caskvet"

  if Hardware::CPU.intel?
    url "https://github.com/breichr/caskvet/releases/download/v0.2.0/caskvet_v0.2.0_darwin_amd64.zip"
    sha256 "4c570a80ddef9036d798d592dd7eff7fe0855fed9d42697aa0f27eb87e575879"
  end
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/breichr/caskvet/releases/download/v0.2.0/caskvet_v0.2.0_darwin_arm64.zip"
    sha256 "8b0d185bcb372431d6c8ba995897d92b54ea5915248882a657abbf7af710e4da"
  end

  def install
    bin.install "caskvet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/caskvet --version")
  end
end
