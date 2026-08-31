class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.3.0/braid-v0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "ec13a4bfb04b628cf3136d011dcd8b6d0b408e46330312e79d318686aea99531"
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
