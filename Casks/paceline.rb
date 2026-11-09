cask "paceline" do
  version "0.1.0"
  sha256 "6ec0a249266cb7ad8b5554e23b440f6754dfbb08a505be0976145f6808f17cad"

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
    Paceline isn't notarized yet. If macOS blocks it the first time, open
    System Settings → Privacy & Security and choose Open Anyway.
  EOS
end
