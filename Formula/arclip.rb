# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.3/arclip-0.1.3-darwin-arm64.tar.gz"
      sha256 "7e781fdff9b28fa5a94d35d66dcae329ca3f9f0a4acc470b14b9a18c6384a5ff"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.3/arclip-0.1.3-darwin-x64.tar.gz"
      sha256 "bdf9069e9e04a28f4f4a89497de40b0d75d8ffcb1712d734c3742a48d2ea9a38"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.3/arclip-0.1.3-linux-arm64.tar.gz"
      sha256 "003b47461ae113da9dc73e3f4d6d236cb65891a1a392e87d72279360341740ea"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.3/arclip-0.1.3-linux-x64.tar.gz"
      sha256 "cb928e3ff4b2ef1e8049b83d34e153fa28d21139bf81d0368c636dbaa39fdda1"
    end
  end

  def install
    bin.install "arclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
