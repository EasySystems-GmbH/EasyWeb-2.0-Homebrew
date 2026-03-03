# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.8, 0.2.8, ed006b8726de2f3477e6cab9a3c545a00ca81dcca7b73c874d484adaa2116d25 and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.8/easyweb-remote-0.2.8.tgz"
  version "0.2.8"
  sha256 "ed006b8726de2f3477e6cab9a3c545a00ca81dcca7b73c874d484adaa2116d25"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, buildpath
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
  end
end
