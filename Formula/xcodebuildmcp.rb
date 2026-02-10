class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/cameroncooke/XcodeBuildMCP"
  license "MIT"
  version "2.0.0-homebrew-e2e.7"

  on_arm do
    url "https://raw.githubusercontent.com/cameroncooke/homebrew-xcodebuildmcp/main/artifacts/2.0.0-homebrew-e2e.7/xcodebuildmcp-2.0.0-homebrew-e2e.7-darwin-arm64.tar.gz"
    sha256 "38c0a723f9f95b32e66a3e351e1e8c1e0bbd000c6079a016a7b44807e114b3a5"
  end

  on_intel do
    url "https://raw.githubusercontent.com/cameroncooke/homebrew-xcodebuildmcp/main/artifacts/2.0.0-homebrew-e2e.7/xcodebuildmcp-2.0.0-homebrew-e2e.7-darwin-x64.tar.gz"
    sha256 "b916cec23cd16157cfbd5b3260448383cbfcfe855f0518ddf6be8ec38602b728"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
