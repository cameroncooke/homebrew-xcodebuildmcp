class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/cameroncooke/XcodeBuildMCP"
  license "MIT"
  version "2.0.3"

  on_arm do
    url "https://github.com/cameroncooke/XcodeBuildMCP/releases/download/v2.0.3/xcodebuildmcp-2.0.3-darwin-arm64.tar.gz"
    sha256 "80172cc428b4b58dbe6d1c2537f2d19d4876553bcc143f9b44005acbb3f568d4"
  end

  on_intel do
    url "https://github.com/cameroncooke/XcodeBuildMCP/releases/download/v2.0.3/xcodebuildmcp-2.0.3-darwin-x64.tar.gz"
    sha256 "ccf14282438cfd9017c58a5078645b8a2ee896742a047feaab61a63adb3da596"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
