cask "aitranslator" do
  version "1.5.1"
  sha256 "9f945ae273b2b00424ed5c436c3ab239d2315c4b4f2ab91d019e7aeb609b1318"

  url "https://github.com/JarvisMaxDev/AITranslator/releases/download/v#{version}/AITranslator.dmg"
  name "AI Translator"
  desc "Native macOS AI translator with global hotkey"
  homepage "https://github.com/JarvisMaxDev/AITranslator"

  depends_on macos: ">= :sonoma"

  app "AI Translator.app"

  zap trash: [
    "~/.aitranslator",
    "~/Library/Preferences/com.aitranslator.app.plist",
  ]
end
