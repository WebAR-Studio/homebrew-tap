# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.9/arclip-0.1.9-darwin-arm64.tar.gz"
      sha256 "25b64c95ae7d469fa9fa7a69b21d789312749cadc6c8f2a27846cfd091f61bdb"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.9/arclip-0.1.9-darwin-x64.tar.gz"
      sha256 "c55c8c936310a5d9ff06455dc8a8937e02b86254b8f850008ae534d3203333cc"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.9/arclip-0.1.9-linux-arm64.tar.gz"
      sha256 "713edd30f49703537d917e79635d068ec4f132d2127cbc84c40e6292b0d45d4b"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.9/arclip-0.1.9-linux-x64.tar.gz"
      sha256 "94c76bf8897f7231304b7b9e7f6b6e0f82b903a8fa0b3ad9b4690e9373126026"
    end
  end

  def install
    bin.install "arclip"
    prefix.install "LICENSE", "NOTICE", "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
