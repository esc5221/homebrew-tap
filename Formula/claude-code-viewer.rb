class ClaudeCodeViewer < Formula
  desc "Desktop viewer for Claude Code CLI sessions"
  homepage "https://github.com/esc5221/claude-code-viewer"
  version "1.0.0"
  
  on_macos do
    url "https://github.com/esc5221/claude-code-viewer/releases/download/v#{version}/claude-code-viewer-#{version}-mac.dmg"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end
  
  on_linux do
    url "https://github.com/esc5221/claude-code-viewer/releases/download/v#{version}/claude-code-viewer-#{version}-linux.AppImage"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  def install
    if OS.mac?
      # DMG 마운트 및 앱 설치
      system "hdiutil", "attach", cached_download
      prefix.install "/Volumes/Claude Code Viewer/Claude Code Viewer.app"
      system "hdiutil", "detach", "/Volumes/Claude Code Viewer"
      
      # CLI 심볼릭 링크 생성
      bin.install_symlink prefix/"Claude Code Viewer.app/Contents/Resources/cli/claude-viewer-cli.js" => "claude-viewer"
    else
      # Linux AppImage 설치
      bin.install "claude-code-viewer-#{version}-linux.AppImage" => "claude-code-viewer"
      chmod 0755, bin/"claude-code-viewer"
    end
  end

  def caveats
    on_macos do
      <<~EOS
        Claude Code Viewer.app was installed to:
          #{prefix}/Claude Code Viewer.app
        
        To use the CLI integration:
          claude-viewer <session-file>
        
        You may want to add the app to your Applications folder:
          ln -s "#{prefix}/Claude Code Viewer.app" /Applications/
      EOS
    end
  end

  test do
    system "#{bin}/claude-viewer", "--version"
  end
end