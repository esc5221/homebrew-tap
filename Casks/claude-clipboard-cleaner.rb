cask "claude-clipboard-cleaner" do
  version "1.0.0"
  sha256 "dc87971557adb6ca6f32279bc5e533253d65d8cdcf35556e4f5c8ff78df87208"

  url "https://github.com/esc5221/claude-clipboard-cleaner/releases/download/v#{version}/ClaudeClipboardCleaner-#{version}-arm64.dmg"
  name "Claude Clipboard Cleaner"
  desc "Auto-clean Claude Code terminal output from clipboard"
  homepage "https://github.com/esc5221/claude-clipboard-cleaner"

  app "Claude Clipboard Cleaner.app"

  zap trash: [
    "~/Library/Preferences/com.mainpy.claude-clipboard-cleaner.plist",
  ]
end
