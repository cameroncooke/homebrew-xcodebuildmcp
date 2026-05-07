class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.5.0"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.5.0/xcodebuildmcp-2.5.0-darwin-arm64.tar.gz"
    sha256 "ba6ea22a98f37b4191887d3dfc34f068b8b3133734b5fa45e1051e40e995cc79"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.5.0/xcodebuildmcp-2.5.0-darwin-x64.tar.gz"
    sha256 "7d5f372cc0fee14801faf7ead48b37563274c3d6cccf5cda994dbf51b0e8463c"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
