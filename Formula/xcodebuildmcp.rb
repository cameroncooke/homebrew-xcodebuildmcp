class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.3.2"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.3.2/xcodebuildmcp-2.3.2-darwin-arm64.tar.gz"
    sha256 "a8752f99a7cf8a3b29737c4ce6043cee5e0a1ed4baf9bd351bca858b0f95e645"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.3.2/xcodebuildmcp-2.3.2-darwin-x64.tar.gz"
    sha256 "d2f787c36acfadc008f9dec88145243fc4d3500008eb52851b7495bb2f671a0e"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
