cask "retyper" do
  version "0.9.3"
  sha256 "0c74d17d0519ccf3d7f28a08c5e70a18652c6e9a5e630845c362362e18df753f"

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
