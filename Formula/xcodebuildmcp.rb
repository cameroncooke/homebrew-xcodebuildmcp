class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.5.2"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.5.2/xcodebuildmcp-2.5.2-darwin-arm64.tar.gz"
    sha256 "291fb5d6d5d22b2ff31ff2ac693f1f70cad3cfe787adcb4eb47bf26f3e869f9b"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.5.2/xcodebuildmcp-2.5.2-darwin-x64.tar.gz"
    sha256 "b1f8af6e659eaebd1f4c61950a8977ea802b57a406fcfdf6a821b87e149a038b"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
