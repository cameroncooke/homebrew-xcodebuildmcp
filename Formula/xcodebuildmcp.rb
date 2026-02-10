class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/cameroncooke/XcodeBuildMCP"
  license "MIT"
  version "2.0.1-test.10"

  on_arm do
    url "https://raw.githubusercontent.com/cameroncooke/homebrew-xcodebuildmcp/main/artifacts/2.0.1-test.10/xcodebuildmcp-2.0.1-test.10-darwin-arm64.tar.gz"
    sha256 "cf7ab7754ea0723b55c95ad549c20e6fc90b0b9bc5793e838e0115f434c93bf9"
  end

  on_intel do
    url "https://raw.githubusercontent.com/cameroncooke/homebrew-xcodebuildmcp/main/artifacts/2.0.1-test.10/xcodebuildmcp-2.0.1-test.10-darwin-x64.tar.gz"
    sha256 "f145679c17e7c15c7db46a038a3f3151552d0bbde712d405661c9f872f167d19"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
