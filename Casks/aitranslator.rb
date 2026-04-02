cask "aitranslator" do
  version "2.3.3"
  sha256 "16962bd00d3a3396d27acdd5d798553edcced77686d3c9f98bd6e8d0ea3e10a8"

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
