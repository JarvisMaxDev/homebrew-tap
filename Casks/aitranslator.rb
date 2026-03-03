cask "aitranslator" do
  version "1.9.0"
  sha256 "4eefceff7089f590dcbb76ce22ac394043071ad0aab2f42bee9fa08b87822cd7"

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
