# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.16, 0.2.16, 62ca5e44ff5a14e925d7f9cab2ec656b526b7b5d13656284fe3223b338ae222b and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.16/easyweb-remote-0.2.16.tgz"
  version "0.2.16"
  sha256 "62ca5e44ff5a14e925d7f9cab2ec656b526b7b5d13656284fe3223b338ae222b"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/easyweb.js" => "easyweb"
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
  end
end
