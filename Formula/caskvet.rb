class Caskvet < Formula
  desc "Read-only supply-chain health report for installed Homebrew casks"
  homepage "https://github.com/breichr/caskvet"
  url "https://github.com/breichr/caskvet/releases/download/v0.1.0/caskvet_v0.1.0_darwin_arm64.zip",
      arch: :arm
  url "https://github.com/breichr/caskvet/releases/download/v0.1.0/caskvet_v0.1.0_darwin_amd64.zip",
      arch: :intel
  version "0.1.0"
  sha256 arm:   "bde2cd29b48d6b6fd094d51a21cd2e20736653671d9bb20029acce3be20c5fe3",
         intel: "0e3c589c86631b99c6b2641537ee56d0615d70d45743ac95e1d85dae9f6f0697"

  def install
    bin.install "caskvet"
  end

  test do
    assert_match "caskvet", shell_output("#{bin}/caskvet help")
  end
end
