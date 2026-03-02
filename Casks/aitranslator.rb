cask "aitranslator" do
  version "1.1.6"
  sha256 "e1752fafbcdcda8f782a2a689599e02f6d59f926ad2c55425e12e3f2d98d72cc"

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
