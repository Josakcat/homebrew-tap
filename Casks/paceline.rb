cask "paceline" do
  version "0.1.6"
  sha256 "4f23936391f5e6f95cea8465e0ab03145bab631a4bf4adb9e07fdd88003e1e32"

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
