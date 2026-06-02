class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.6.1"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.6.1/xcodebuildmcp-2.6.1-darwin-arm64.tar.gz"
    sha256 "dc7f998a066319544d6492614a35a0711400f1ff3a6fe8363c47057cc03de45c"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.6.1/xcodebuildmcp-2.6.1-darwin-x64.tar.gz"
    sha256 "46ab7d280270b027010b7f883e4e96dfcaee3a8995606e28591de9fe82d7f184"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
