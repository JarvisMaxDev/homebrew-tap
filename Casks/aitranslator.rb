cask "aitranslator" do
  version "1.7.3"
  sha256 "068035c2e4ef2342459d95c40323161b1a81f07adb064a19358a2b855867dd72"

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
