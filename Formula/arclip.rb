# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.7/arclip-0.1.7-darwin-arm64.tar.gz"
      sha256 "a4ae87cd8e36d3a7dadeeab7d817661244a0e9d2db3dc6b11bb0d9c87bc1b813"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.7/arclip-0.1.7-darwin-x64.tar.gz"
      sha256 "c2c20a88f377ab1bedbcb3d357998b4e978135069ca9b51892a72059f7242847"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.7/arclip-0.1.7-linux-arm64.tar.gz"
      sha256 "b1e4fb31b92b1b8f80102476f67c98eb488b28b905adcb84b3479ed59bbb25b4"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.7/arclip-0.1.7-linux-x64.tar.gz"
      sha256 "2d5fdda73888d440d7800db657775a4206c213b380f0fa470baf5d2b8619b881"
    end
  end

  def install
    bin.install "arclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
