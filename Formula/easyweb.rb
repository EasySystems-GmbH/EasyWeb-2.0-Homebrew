# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.18, 0.2.18, c7d38dca3935f4c03c24e9d8bd696c34dd92dd388ec5a0d7df0b4e71ce1480f6 and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.18/easyweb-remote-0.2.18.tgz"
  version "0.2.18"
  sha256 "c7d38dca3935f4c03c24e9d8bd696c34dd92dd388ec5a0d7df0b4e71ce1480f6"

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
