class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.3.1"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.3.1/xcodebuildmcp-2.3.1-darwin-arm64.tar.gz"
    sha256 "2a3dd9627ecd3b2ed6bbcfff2da8f751fd2bcf834391a5da8dbfde7fc0083d48"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.3.1/xcodebuildmcp-2.3.1-darwin-x64.tar.gz"
    sha256 "292545dbe83506fcd818184e2ff89bd41250f8d1aca414b800b84e91aa1cfdbc"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
