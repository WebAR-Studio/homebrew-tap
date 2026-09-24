# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.2/arclip-0.1.2-darwin-arm64.tar.gz"
      sha256 "27e7ed5606640ec5f0468edbb6a91843e4fb3243818365cd4b84b63201cfec95"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.2/arclip-0.1.2-darwin-x64.tar.gz"
      sha256 "0afde3006f9b43153fb124b30df511792e1829994bb997651f9103b8e1e0f1d2"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.2/arclip-0.1.2-linux-arm64.tar.gz"
      sha256 "1f03c66abc09854325e5f2c4835bb291a210639503a903436f3ebf92e2cee347"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.2/arclip-0.1.2-linux-x64.tar.gz"
      sha256 "c18cd611368d69737b54ce85d2582c7a60c01176e374440ad1154d9882364e9c"
    end
  end

  def install
    bin.install "arclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
