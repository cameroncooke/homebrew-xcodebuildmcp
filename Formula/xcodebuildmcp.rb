class Xcodebuildmcp < Formula
  desc "Model Context Protocol server for Xcode project workflows"
  homepage "https://github.com/cameroncooke/XcodeBuildMCP"
  license "MIT"
  version "2.0.0-homebrew-e2e.8"

  on_arm do
    url "https://raw.githubusercontent.com/cameroncooke/homebrew-xcodebuildmcp/main/artifacts/2.0.0-homebrew-e2e.8/xcodebuildmcp-2.0.0-homebrew-e2e.8-darwin-arm64.tar.gz"
    sha256 "f6b5731851755d7128fe49b8f6e97890338a8877e3977c6e89b5d895e74fd68b"
  end

  on_intel do
    url "https://raw.githubusercontent.com/cameroncooke/homebrew-xcodebuildmcp/main/artifacts/2.0.0-homebrew-e2e.8/xcodebuildmcp-2.0.0-homebrew-e2e.8-darwin-x64.tar.gz"
    sha256 "fc84b8167051353f9e7578035fe3c9eefcb41e305e75d860fcd9ab0cfc69daf5"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "xcodebuildmcp", shell_output("#{bin}/xcodebuildmcp --help")
  end
end
