class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/getsentry/XcodeBuildMCP"
  license "MIT"
  version "2.6.2"

  on_arm do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.6.2/xcodebuildmcp-2.6.2-darwin-arm64.tar.gz"
    sha256 "73694409676f485ad5083bc0902de251769a5e699c78f4cd96e8f49e79d709b8"
  end

  on_intel do
    url "https://github.com/getsentry/XcodeBuildMCP/releases/download/v2.6.2/xcodebuildmcp-2.6.2-darwin-x64.tar.gz"
    sha256 "058e82a6b3f4b45a8d28a81a702a23e8fd4d29db3d433aed47a6d93d75590617"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
