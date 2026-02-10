class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.0.7"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.0.7/xcodebuildmcp-2.0.7-darwin-arm64.tar.gz"
    sha256 "151048fd620eb1163d9dc954e951b65e5f65736cca4e5e0099b68446221366cb"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.0.7/xcodebuildmcp-2.0.7-darwin-x64.tar.gz"
    sha256 "51d7e88155e2546c5ffa3ccdfc3e048c0743f256a6e935498219de7cbbaf613b"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
