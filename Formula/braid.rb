class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.2.0/braid-v0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "8cc97d0c7ec979a387ed2a0eb35fc68d657dbfe9e9343169e2a9a55707f712cb"
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
