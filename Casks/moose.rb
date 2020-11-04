cask "moose" do
  version "0.6.2"
  sha256 "79c5eaee0187fc0b131ffabe9d6abd04c39d936c3b096919390aaf12abaecac3"

  # github.com/ritz078/moose/ was verified as official when first introduced to the cask
  url "https://github.com/ritz078/moose/releases/download/v#{version}/moose-#{version}-mac.zip"
  appcast "https://github.com/ritz078/moose/releases.atom"
  name "moose"
  homepage "https://getmoose.in/"

  app "moose.app"

  zap trash: [
    "~/Library/Application Support/moose",
    "~/Library/Logs/moose",
    "~/Library/Preferences/com.riteshkr.moose.plist",
    "~/Library/Saved Application State/com.riteshkr.moose.savedState",
  ]
end
