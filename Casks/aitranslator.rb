cask "aitranslator" do
  version "1.1.0"
  sha256 "a1cf66b2232ed291b2a9ad1d1b376803befa79b709a7c2d9d8f0874995f7f758"

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
