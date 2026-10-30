class Caskvet < Formula
  desc "Read-only supply-chain health report for installed Homebrew casks and formulae"
  homepage "https://github.com/breichr/caskvet"

  if Hardware::CPU.intel?
    url "https://github.com/breichr/caskvet/releases/download/v0.2.2/caskvet_v0.2.2_darwin_amd64.zip"
    sha256 "07cc2e4e9e6f4736497e65423ffd47194c6198de2b2a7a90f50496400ec82a69"
  end
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/breichr/caskvet/releases/download/v0.2.2/caskvet_v0.2.2_darwin_arm64.zip"
    sha256 "e3be69d1feb9570f864d3d2e07b0f4bac999adb4742a967585a1bafff17be55a"
  end

  def install
    bin.install "caskvet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/caskvet --version")
  end
end
