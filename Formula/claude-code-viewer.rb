class ClaudeCodeViewer < Formula
  desc "Desktop viewer for Claude Code CLI sessions"
  homepage "https://github.com/esc5221/claude-viewer"
  version "1.0.4"
  
  on_macos do
    url "https://github.com/esc5221/claude-viewer/releases/download/v#{version}/Claude.Code.Viewer-#{version}-arm64.dmg"
    sha256 "2e1c629f14917ff47de81933a8220530904236a5d4d7746ed23505326cccde0f"
  end

  def install
    system "hdiutil", "attach", cached_download
    prefix.install Dir["/Volumes/Claude Code Viewer/*.app"].first
    system "hdiutil", "detach", "/Volumes/Claude Code Viewer"
    
    # CLI 링크
    bin.install_symlink prefix/"Claude Code Viewer.app/Contents/Resources/cli/claude-viewer-cli.js" => "claude-viewer"
    bin.install_symlink prefix/"Claude Code Viewer.app/Contents/Resources/cli/claude-viewer-cli.js" => "ccviewer"
  end

  test do
    system "#{bin}/claude-viewer", "--version"
  end
end