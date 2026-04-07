cask "claude-pop" do
  version "0.1.0"
  sha256 "2b209cc233a344908434862793a5f87dbc68b4557dda64a336a0a89763345e06"

  url "https://github.com/esc5221/claude-pop/releases/download/v#{version}/Claude-Pop.dmg"
  name "Claude Pop"
  desc "macOS overlay notification for Claude Code task completion"
  homepage "https://github.com/esc5221/claude-pop"

  app "Claude Pop.app"
  binary "#{appdir}/Claude Pop.app/Contents/MacOS/claude-pop"

  zap trash: [
    "~/Library/Preferences/com.mainpy.dev.claude-pop.plist",
  ]
end
