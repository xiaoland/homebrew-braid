class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.2.3/braid-v0.2.3-aarch64-apple-darwin.tar.gz"
  sha256 "c0d6e20cc2868bcda3f4fcaf5b44e1b8283f4378373cc2618e7bc29f548c9987"
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
