# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.6/arclip-0.1.6-darwin-arm64.tar.gz"
      sha256 "8d89e0535179a495ee24a158862f7259ddf6c3df22bfaface2097b28f870127d"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.6/arclip-0.1.6-darwin-x64.tar.gz"
      sha256 "2a3ffa9996ecfcb4052b3bbb700baeb53ad013c86f123e56b54433051d124b87"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.6/arclip-0.1.6-linux-arm64.tar.gz"
      sha256 "a878b0777d346a7a181b9d6c9d21b7e52f7a33895d5964bc129ff743749b0d68"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.6/arclip-0.1.6-linux-x64.tar.gz"
      sha256 "88e1e4fe11066f4511fb990d77258b9984b4024c303a2c14f05f6e94d5840098"
    end
  end

  def install
    bin.install "arclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
