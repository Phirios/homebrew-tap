cask "claudemenubar" do
  version "1.1.0"
  sha256 "f0674bed2ea9b1149b6a67e1219dac1ded211bc9ff8e4d923e558ce8a5752f06"

  url "https://github.com/Phirios/ClaudeMenuBar/releases/download/v#{version}/ClaudeMenuBar-v#{version}.zip"
  name "ClaudeMenuBar"
  desc "macOS menu bar app that displays Claude Code rate limit usage in real time"
  homepage "https://github.com/Phirios/ClaudeMenuBar"

  app "ClaudeMenuBar.app"

  zap trash: [
    "~/Library/Application Support/ClaudeMenuBar",
    "~/Library/Preferences/com.phirios.ClaudeMenuBar.plist",
    "~/.claude/claude-menubar-token",
  ]
end
