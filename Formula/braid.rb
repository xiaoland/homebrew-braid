class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.2.1/braid-v0.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "c387a631398986106dcce7c922d104a09ee162136fbb0b7cc11160a55b371348"
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
