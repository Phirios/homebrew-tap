cask "ailimitcounter" do
  version "1.2.0"
  sha256 "cb6c8c97fc2ad092a465d9e8e47d338093743042e5a19c6e2a6bc28dba3d545c"

  url "https://github.com/Phirios/AILimitCounter/releases/download/v#{version}/AILimitCounter-v#{version}.zip"
  name "AILimitCounter"
  desc "Menu bar app that displays AI CLI rate limit usage"
  homepage "https://github.com/Phirios/AILimitCounter"

  app "AILimitCounter.app"

  zap trash: [
    "~/Library/Application Support/AILimitCounter",
    "~/Library/Preferences/com.phirios.AILimitCounter.plist",
    "~/Library/Application Support/ClaudeMenuBar",
    "~/Library/Preferences/com.phirios.ClaudeMenuBar.plist",
    "~/.claude/claude-menubar-token",
  ]
end
