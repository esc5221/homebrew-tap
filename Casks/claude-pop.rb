cask "claude-pop" do
  version "1.0.1"
  sha256 "217ede13b8987040d6e28ad321c3a8e77c73b61a9d43bad2656265b125a3467f"

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
