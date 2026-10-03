# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.4/arclip-0.1.4-darwin-arm64.tar.gz"
      sha256 "6f70db72a4026c0276d2ef484109c48f69b397a597dff7bbb894c684b3cf6065"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.4/arclip-0.1.4-darwin-x64.tar.gz"
      sha256 "3404a6fa83d3e0937bb8131de92741655a5b11bac8243c82cf728b433b1ea5a4"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.4/arclip-0.1.4-linux-arm64.tar.gz"
      sha256 "71116930db026cdfbfc543785319ac935db9e603bb086b640ec8dce55476e9e4"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.4/arclip-0.1.4-linux-x64.tar.gz"
      sha256 "f5e19fff4af1e4f575a3be4bcddf5cfe80ad6c003c996704abeb0508e9a6e964"
    end
  end

  def install
    bin.install "arclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
