class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/cameroncooke/XcodeBuildMCP"
  license "MIT"
  version "2.0.5"

  on_arm do
    url "https://github.com/cameroncooke/XcodeBuildMCP/releases/download/v2.0.5/xcodebuildmcp-2.0.5-darwin-arm64.tar.gz"
    sha256 "9e11900be4e019d45f16420f044f16fe01ad05fe5e38a8318e1b48a26bd6ffd2"
  end

  on_intel do
    url "https://github.com/cameroncooke/XcodeBuildMCP/releases/download/v2.0.5/xcodebuildmcp-2.0.5-darwin-x64.tar.gz"
    sha256 "39950a7e8ed35fa7210dd11ec3f0147542f2a8fd68dd753beb4e1297e1132d49"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
