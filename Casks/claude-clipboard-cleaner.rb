cask "claude-clipboard-cleaner" do
  version "1.0.1"
  sha256 "ce1023158961425279b47aa4de4c36bf6caff10d45b4bcc8f891571681527429"

  url "https://github.com/esc5221/claude-clipboard-cleaner/releases/download/v#{version}/ClaudeClipboardCleaner-#{version}-arm64.dmg"
  name "Claude Clipboard Cleaner"
  desc "Auto-clean Claude Code terminal output from clipboard"
  homepage "https://github.com/esc5221/claude-clipboard-cleaner"

  app "Claude Clipboard Cleaner.app"

  zap trash: [
    "~/Library/Preferences/com.mainpy.claude-clipboard-cleaner.plist",
  ]
end
