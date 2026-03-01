cask "aitranslator" do
  version "1.0.0"
  sha256 "c6ef5dd471176faf67e96a652dd6aa29f71374ac4f044c4109f2915dc4907892"

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
