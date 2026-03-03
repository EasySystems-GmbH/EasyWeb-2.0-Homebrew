# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.14, 0.2.14, 1b1fc8e4e6a36323e867cd8a629b31f66c02bafbac8493aa1736baf0e00ebeb7 and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.14/easyweb-remote-0.2.14.tgz"
  version "0.2.14"
  sha256 "1b1fc8e4e6a36323e867cd8a629b31f66c02bafbac8493aa1736baf0e00ebeb7"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    (bin/"easyweb").write_exec_script libexec/"bin/easyweb.js"
  end

  test do
    assert_match "EasyWeb CLI", shell_output("#{bin}/easyweb --help", 0)
  end
end
