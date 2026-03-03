# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.12, 0.2.12, 12786fa13a171b9a8c71c2e18a77ebebe3e1ab7c39995488aa7ef7a3d44b4f6f and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.12/easyweb-remote-0.2.12.tgz"
  version "0.2.12"
  sha256 "12786fa13a171b9a8c71c2e18a77ebebe3e1ab7c39995488aa7ef7a3d44b4f6f"

  depends_on "node"

  def install
    system "npm", "install", "--prefix", libexec, buildpath
    bin.install_symlink libexec/"bin/easyweb"
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
  end
end
