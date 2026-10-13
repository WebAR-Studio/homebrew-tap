# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.5/arclip-0.1.5-darwin-arm64.tar.gz"
      sha256 "13d1d8cb0d9baae86faca085cbad1372f3ad332c56e0f105a03cb8c9ab86c5e1"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.5/arclip-0.1.5-darwin-x64.tar.gz"
      sha256 "dfc8bdac40844e1f4ac73d0d5b2122d8b1f57578965c44a13c7af873d7d4d02f"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.5/arclip-0.1.5-linux-arm64.tar.gz"
      sha256 "41d37bec34c4d0cede1248b03fe7e15b91ae26c295e5b2506e0dd7ea754e8af4"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.5/arclip-0.1.5-linux-x64.tar.gz"
      sha256 "c9b900050c0350f4f7f2223de0f3ded06ff30aba3b68793e2acbdaf00d2aac03"
    end
  end

  def install
    bin.install "arclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
