cask "claude-code-viewer" do
  version "1.0.4"
  sha256 "2e1c629f14917ff47de81933a8220530904236a5d4d7746ed23505326cccde0f"

  url "https://github.com/esc5221/claude-viewer/releases/download/v#{version}/Claude.Code.Viewer-#{version}-arm64.dmg"
  name "Claude Code Viewer"
  desc "Desktop viewer for Claude Code CLI sessions"
  homepage "https://github.com/esc5221/claude-viewer"

  app "Claude Code Viewer.app"

  zap trash: [
    "~/Library/Application Support/claude-code-viewer",
    "~/Library/Preferences/com.mainpy.claude-code-viewer.plist",
  ]
end