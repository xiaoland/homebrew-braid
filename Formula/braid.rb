class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.1.0/braid-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "35ef15992dd1ef801f914d800750ee10e65d3bff95860aed3cbc6f241ebafaad"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "bin/braid"
  end

  test do
    system "#{bin}/braid", "--version"
  end
end
