# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.8/arclip-0.1.8-darwin-arm64.tar.gz"
      sha256 "2901e464bbbce717e5d817777b3f6dedc5fd1107b7ae57d5b0f8dfc161c064ff"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.8/arclip-0.1.8-darwin-x64.tar.gz"
      sha256 "9dcfc4cad08e8f8009824b7285e950093bd14e9e28f49a6f8cd14d8d954e4133"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.8/arclip-0.1.8-linux-arm64.tar.gz"
      sha256 "66fc418aa2d4deb4876fb10bc3adaf7b7ec1997029c76150324312ab84aa80d3"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.8/arclip-0.1.8-linux-x64.tar.gz"
      sha256 "da40b5897d5c74ecb95de66b68eb747af9e3e6e552e2f1815892abb4f864c577"
    end
  end

  def install
    bin.install "arclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
