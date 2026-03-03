# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.15, 0.2.15, 882e0c17de425df973dc8278a5ade84c6ccc6a4b3c3613f1bdde741b76177285 and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.15/easyweb-remote-0.2.15.tgz"
  version "0.2.15"
  sha256 "882e0c17de425df973dc8278a5ade84c6ccc6a4b3c3613f1bdde741b76177285"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/easyweb.js" => "easyweb"
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
  end
end
