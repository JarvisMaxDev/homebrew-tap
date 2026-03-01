cask "retyper" do
  version "0.8.0"
  sha256 "00542a2e231af1809327ff07d982949bed3c9ea60b7473c82e682f8884d5af16"

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
