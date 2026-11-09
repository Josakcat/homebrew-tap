cask "paceline" do
  version "0.1.1"
  sha256 "babed8b81080eb50e11a5e098835d6bd43b28e11ded2863a3b8905ee99471ebd"

  url "https://github.com/Josakcat/paceline/releases/download/v#{version}/Paceline.zip"
  name "Paceline"
  desc "Menu bar meter for AI plan limits and usage, read from local files"
  homepage "https://github.com/Josakcat/paceline"

  depends_on macos: :sonoma

  app "Paceline.app"

  zap trash: [
    "~/Library/Application Support/Paceline",
    "~/Library/Caches/Paceline",
    "~/Library/Preferences/com.josakcat.paceline.plist",
  ]

  caveats <<~EOS
    Paceline isn't notarized yet. The first time you open it, macOS says it
    can't verify the app: choose Done, not Move to Trash. Then open
    System Settings → Privacy & Security and choose Open Anyway.
  EOS
end
