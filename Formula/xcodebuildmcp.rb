class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.5.1"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.5.1/xcodebuildmcp-2.5.1-darwin-arm64.tar.gz"
    sha256 "68516f21028ebc990fc8d21552bb1d6bccd4aed1f142e1096730f94e7d59f80a"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.5.1/xcodebuildmcp-2.5.1-darwin-x64.tar.gz"
    sha256 "7ccbf1b4250cb1a3fee4f2e94261b640951c7c30bf311f5198f0f12390d96e73"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
