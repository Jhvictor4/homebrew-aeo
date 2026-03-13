class Aeo < Formula
  desc "GEO optimization CLI by Aeolo"
  homepage "https://github.com/Jhvictor4/aeolo"
  # TODO: update url and sha256 when first release is cut
  # url "https://github.com/Jhvictor4/aeolo/archive/refs/tags/v0.1.0.tar.gz"
  # sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aeo --version")
  end
end
