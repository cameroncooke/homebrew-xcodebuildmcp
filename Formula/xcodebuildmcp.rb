class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.6.0"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.6.0/xcodebuildmcp-2.6.0-darwin-arm64.tar.gz"
    sha256 "1b604cebc340c643a91bbacd48e4e2a41f4f2537b1f5b8757213feef1cfea52f"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.6.0/xcodebuildmcp-2.6.0-darwin-x64.tar.gz"
    sha256 "9738e175642e7b78eee93fa7026e6a40c1bbbbc07add23b6885f851a37938070"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
