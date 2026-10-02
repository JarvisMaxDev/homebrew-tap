cask "retyper" do
  version "0.11.1"
  sha256 "f072f21b406d05aa65c3c670111123ef48e26ca81ba4de065cc7fbcec2163917"

  url "https://github.com/JarvisMaxDev/ReTyper/releases/download/v#{version}/ReTyper-macOS-universal.dmg"
  name "ReTyper"
  desc "macOS keyboard layout switcher — convert mistyped text between Latin and Cyrillic"
  homepage "https://github.com/JarvisMaxDev/ReTyper"

  depends_on macos: :monterey

  app "ReTyper.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/ReTyper.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.retyper.app.plist",
  ]
end
