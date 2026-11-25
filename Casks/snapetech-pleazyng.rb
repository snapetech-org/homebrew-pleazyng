cask "snapetech-pleazyng" do
  version "3.0.52"
  sha256 "aab0b63afcc3ea001e8079fa58980efbdc6a1f1299166db258f8160921401e04"

  url "https://github.com/snapetech-org/pleazyng/releases/download/v#{version}/pleazyng-macos-notarized.dmg"
  name "Pleazyng"
  desc "Media client for Plex, Jellyfin, and Emby"
  homepage "https://github.com/snapetech-org/pleazyng"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Pleazyng.app"

  uninstall quit: "org.snapetech.pleazyng"

  zap trash: [
    "~/Library/Application Support/org.snapetech.pleazyng",
    "~/Library/Caches/org.snapetech.pleazyng",
    "~/Library/HTTPStorages/org.snapetech.pleazyng",
    "~/Library/Preferences/org.snapetech.pleazyng.plist",
    "~/Library/Saved Application State/org.snapetech.pleazyng.savedState",
    "~/Library/WebKit/org.snapetech.pleazyng",
  ]
end
