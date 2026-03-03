# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.17, 0.2.17, 3c7f7586a7910e7eebb060da6c943b8cbfe3b4334765da8427ef013f9edd2b0d and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.17/easyweb-remote-0.2.17.tgz"
  version "0.2.17"
  sha256 "3c7f7586a7910e7eebb060da6c943b8cbfe3b4334765da8427ef013f9edd2b0d"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/easyweb.js" => "easyweb"
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
    assert_match(/\A\d+\.\d+\.\d+\n\z/, shell_output("#{bin}/easyweb --version", 0))
  end
end
