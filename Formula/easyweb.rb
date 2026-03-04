# typed: false
# frozen_string_literal: true

# Source template for EasyWeb-2.0-Homebrew/Formula/easyweb.rb
# CI replaces V0.2.19, 0.2.19, 94b4ec013b939bfacdeccb6daf7573dee4de8b2b8690fc6458d5b3066730e7f0 and publishes to public Homebrew repo.

class Easyweb < Formula
  desc "EasyWeb CLI for managing EasyWeb themes and remote editing"
  homepage "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub"
  url "https://github.com/EasySystems-GmbH/EasyWeb-2.0-Hub/releases/download/V0.2.19/easyweb-remote-0.2.19.tgz"
  version "0.2.19"
  sha256 "94b4ec013b939bfacdeccb6daf7573dee4de8b2b8690fc6458d5b3066730e7f0"

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
