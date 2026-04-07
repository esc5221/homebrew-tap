cask "claude-pop" do
  version "1.0.0"
  sha256 "1f13fb6ca7884b8ede68a96abe502a21509b5fab0d27a34de019c568e5481383"

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
