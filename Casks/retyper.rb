cask "retyper" do
  version "0.9.1"
  sha256 "285510c7685cec30442593ade21b363107fc0f7b44e0670d9e29d7e0be293458"

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
