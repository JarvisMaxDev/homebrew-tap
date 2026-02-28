cask "retyper" do
  version "0.6.0"
  sha256 "a02dc68369adf67af9300a0f680905dab517a4c8151ab8bde99f7e22cb146a9d"

  url "https://github.com/JarvisMaxDev/ReTyper/releases/download/v#{version}/ReTyper-macOS-universal.dmg"
  name "ReTyper"
  desc "macOS keyboard layout switcher — convert mistyped text between Latin and Cyrillic"
  homepage "https://github.com/JarvisMaxDev/ReTyper"

  depends_on macos: ">= :ventura"

  app "ReTyper.app"

  zap trash: [
    "~/Library/Preferences/com.retyper.app.plist",
  ]
end
