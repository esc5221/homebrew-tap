cask "claude-code-viewer" do
  version "1.0.5"
  sha256 "d1005f43d0d60e90ff5a4e56ef95563a78d4ce139b62f3225e00a817762ba50c"

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