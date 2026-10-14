# Written by apps/desktop/scripts/homebrew.ts on every arclip.design release; edits here are overwritten.
cask "arclip-design" do
  version "0.1.1"
  sha256 "f883364f528375fa3dcbf2c113b31491c57fae70b8008c6029b5571f5b515f55"

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
