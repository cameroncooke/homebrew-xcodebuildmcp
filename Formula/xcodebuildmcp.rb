class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/cameroncooke/XcodeBuildMCP"
  license "MIT"
  version "2.0.0-homebrew-e2e.4"

  on_arm do
    url "https://github.com/cameroncooke/XcodeBuildMCP/releases/download/v2.0.0-homebrew-e2e.4/xcodebuildmcp-2.0.0-homebrew-e2e.4-darwin-arm64.tar.gz"
    sha256 "c63e6e474cc5f1d79205bbc107914a1c5f8a64ce39b6c4b432da88e546e36814"
  end

  on_intel do
    url "https://github.com/cameroncooke/XcodeBuildMCP/releases/download/v2.0.0-homebrew-e2e.4/xcodebuildmcp-2.0.0-homebrew-e2e.4-darwin-x64.tar.gz"
    sha256 "30b1a0714cce36f6a5457ef107bfb736ed4d29875bf68d5b32964a4485b3e96e"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
