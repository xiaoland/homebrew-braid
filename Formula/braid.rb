class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.3.2/braid-v0.3.2-aarch64-apple-darwin.tar.gz"
  sha256 "854b79e3d443d2fb894b345ae05a7f79f36a879e0745bbe039c614609c385dde"
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
