# Written by apps/desktop/scripts/homebrew.ts on every arclip.design release; edits here are overwritten.
cask "arclip-design" do
  version "0.1.0"
  sha256 "4c617ed88c4bd6b91bd3e65cdac04a488b2368cc7df1e45ab0c2b7b1ebf085e5"

  url "https://cdn-aws.arclip.app/libs/desktop/#{version}/arclip-design-#{version}-mac.dmg"
  name "arclip.design"
  desc "AR scene editor"
  homepage "https://arclip.design/desktop"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "arclip.design.app"

  zap trash: [
    "~/Library/Application Support/arclip.design",
    "~/Library/Caches/arclip-design-updater",
    "~/Library/Logs/arclip.design",
    "~/Library/Preferences/design.arclip.desktop.plist",
    "~/Library/Saved Application State/design.arclip.desktop.savedState",
  ]
end
