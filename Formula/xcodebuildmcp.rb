class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.3.0"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.3.0/xcodebuildmcp-2.3.0-darwin-arm64.tar.gz"
    sha256 "b2b4ed5ceb54b71a0a10df2a19ed31c9dbf6461b105a23fbbd0e5f9236d8303c"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.3.0/xcodebuildmcp-2.3.0-darwin-x64.tar.gz"
    sha256 "35d1e87431482818589079c03d36f98e582cfcff471f6a517bedf4ab1f0ae895"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
