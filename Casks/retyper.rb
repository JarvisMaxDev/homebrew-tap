cask "retyper" do
  version "0.4.1"
  sha256 "c34d433348332290bdffa502b2fb7b49a54e288ba267aed79f4da688e6dcbcb6"

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
