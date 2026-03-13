class Aeo < Formula
  desc "Manage your brand visibility from the terminal"
  homepage "https://github.com/Jhvictor4/aeo"
  url "https://github.com/Jhvictor4/aeo/releases/download/v0.1.0/aeo-0.1.0.tar.gz"
  sha256 "e9086ae703a059d17b83afe1085a0c7715102ba5a0bbbe7e26e243ec507716c4"
  license "MIT"

  depends_on "node"

  def install
    libexec.install "dist/index.js"
    (bin/"aeo").write <<~EOS
      #!/bin/sh
      exec node "#{libexec}/index.js" "$@"
    EOS
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
