# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.7, 0.2.7, 3f6144fb70cc53cb98cb16f99f69feb97177fe84b9ee1763e23c9a7c3158db09 and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.7/easyweb-remote-0.2.7.tgz"
  version "0.2.7"
  sha256 "3f6144fb70cc53cb98cb16f99f69feb97177fe84b9ee1763e23c9a7c3158db09"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, buildpath
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
  end
end
