class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.3.1/braid-v0.3.1-aarch64-apple-darwin.tar.gz"
  sha256 "99be432874bb42b66e5865b5c34887d2516c855b9926e32fd0b9bf5399694f6c"
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
