# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.13, 0.2.13, dbee0382446d329c66bdfad71262680b080349c72f0fd24947cb6a1123145c87 and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.13/easyweb-remote-0.2.13.tgz"
  version "0.2.13"
  sha256 "dbee0382446d329c66bdfad71262680b080349c72f0fd24947cb6a1123145c87"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/easyweb.js"
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
  end
end
