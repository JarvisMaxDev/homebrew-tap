cask "retyper" do
  version "0.10.1"
  sha256 "ca66f9d49df43875294d5077949b1ba28b1c4a99ff5f1f48a8af6933e4d0006f"

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
