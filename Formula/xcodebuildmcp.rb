class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/cameroncooke/XcodeBuildMCP"
  license "MIT"
  version "2.0.0-homebrew-e2e.5"

  on_arm do
    url "https://github.com/cameroncooke/XcodeBuildMCP/releases/download/v2.0.0-homebrew-e2e.5/xcodebuildmcp-2.0.0-homebrew-e2e.5-darwin-arm64.tar.gz"
    sha256 "d26a696ec9de173fdcba0bffcb91b5472145600f95d0486753f48aed61c73c73"
  end

  on_intel do
    url "https://github.com/cameroncooke/XcodeBuildMCP/releases/download/v2.0.0-homebrew-e2e.5/xcodebuildmcp-2.0.0-homebrew-e2e.5-darwin-x64.tar.gz"
    sha256 "028880b2bbc75293d124652fc8320a43fd6bdde9c9120e34a92c4bc21be99089"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
