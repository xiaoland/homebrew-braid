class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.1.0/braid-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "acb96c3b9ee6dbb16a4a13c84392e5b0fa492fd3abb608cce0b61087d65bcacd"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "braid"
  end

  test do
    system "#{bin}/braid", "--version"
  end
end
