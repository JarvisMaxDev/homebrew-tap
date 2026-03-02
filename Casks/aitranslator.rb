cask "aitranslator" do
  version "1.1.1"
  sha256 "87605098a5b1d87f621d55db773b0a36382c9c80ea6477d7576afb7cf890b291"

  url "https://github.com/JarvisMaxDev/AITranslator/releases/download/v#{version}/AITranslator.dmg"
  name "AI Translator"
  desc "Native macOS AI translator — OpenAI, Claude, Qwen, Gemini with global hotkey"
  homepage "https://github.com/JarvisMaxDev/AITranslator"

  depends_on macos: ">= :sonoma"

  app "AI Translator.app"

  zap trash: [
    "~/.aitranslator",
    "~/Library/Preferences/com.aitranslator.app.plist",
  ]
end
