# typed: false
# frozen_string_literal: true

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.6/easyweb-remote-0.2.6.tgz"
  version "0.2.6"
  sha256 "1146914e5dc4c12966da4d63ba22f678d5c8b83b3da61163b3f7fc487db97fec"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, buildpath/"package"
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
  end
end
