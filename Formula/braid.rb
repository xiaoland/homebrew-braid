class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.1.0/braid-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "506e536b9d08139f4cf6139ae9a9d4fb6f9844e035d0676268789a1e88481e29"
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
