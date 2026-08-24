class Braid < Formula
  desc "GitHub working memory for local coding agents"
  homepage "https://github.com/xiaoland/braid"
  url "https://github.com/xiaoland/braid/releases/download/v0.1.0/braid-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "ead51c3525b87b3a2a92865a3b5bf2327f508b350ef4fc0b14c535fb7d567424"
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
