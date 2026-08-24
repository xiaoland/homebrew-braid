class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.1.0/braid-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "f50c53fb6636feb35aa737469865748d2375a6aad46535d5f3af12f16b7a0129"
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
