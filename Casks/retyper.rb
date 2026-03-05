cask "retyper" do
  version "0.8.1"
  sha256 "d8d59445700e9089f30a01301ce40dde78d2c45ae791fe1c5cfffd6440de3f04"

  url "https://github.com/JarvisMaxDev/ReTyper/releases/download/v#{version}/ReTyper-macOS-universal.dmg"
  name "ReTyper"
  desc "macOS keyboard layout switcher — convert mistyped text between Latin and Cyrillic"
  homepage "https://github.com/JarvisMaxDev/ReTyper"

  depends_on macos: ">= :monterey"

  app "ReTyper.app"

  zap trash: [
    "~/Library/Preferences/com.retyper.app.plist",
  ]
end
