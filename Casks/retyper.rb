cask "retyper" do
  version "0.10.0"
  sha256 "3a98245941b79b9f8a579dff1f7cecdfd494d4724f5860158d7a10cc366cd311"

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
