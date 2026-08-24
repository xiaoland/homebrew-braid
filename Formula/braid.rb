class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.2.2/braid-v0.2.2-aarch64-apple-darwin.tar.gz"
  sha256 "de5035cc77700020a7bc04c0c14b07dd14192dc281c5af6e328168b6cc881cea"
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
