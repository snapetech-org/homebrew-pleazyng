cask "snapetech-pleazyng" do
  version "3.0.51"
  sha256 "0feb3cc8b60ccb27a77b5ccb2784b370b47fe1e5481df9dd86f7a2a03f0695d6"

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
