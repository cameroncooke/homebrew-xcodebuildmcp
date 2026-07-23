class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.7.0"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.7.0/xcodebuildmcp-2.7.0-darwin-arm64.tar.gz"
    sha256 "bd724a2c0e6ffe027b3f46257e66d626149a64cd045f4867124bd683b3cf081a"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.7.0/xcodebuildmcp-2.7.0-darwin-x64.tar.gz"
    sha256 "f62522c07591a0871601b9fe0c30666bcbe3b1d93dc458eb295c8998ac4fa304"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
