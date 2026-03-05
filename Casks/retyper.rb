cask "retyper" do
  version "0.9.0"
  sha256 "2d541a87d1bbd6e20da8695d80c82b358e8fb0d387bbd77557258398e11a589a"

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
