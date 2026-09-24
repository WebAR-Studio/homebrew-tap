# Written by apps/cli/scripts/homebrew.ts on every arclip release; edits here are overwritten.
class Arclip < Formula
  desc "Build AR scenes with the AI agent you already use"
  homepage "https://arclip.design/cli"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.1/arclip-0.1.1-darwin-arm64.tar.gz"
      sha256 "4089e40fbf037d2839304c5fd15a642e5e1ac9c3abe491c48836c4ffc7384b14"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.1/arclip-0.1.1-darwin-x64.tar.gz"
      sha256 "7cae097459b5dddd1ea5eb44c17feb74ae9ad84ae5318cf7189faf22fadb95b7"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.1/arclip-0.1.1-linux-arm64.tar.gz"
      sha256 "6fc3916d23a50d874b70ef7fa959d2ff92ff2536b44a42697de29104de207d0d"
    end
    on_intel do
      url "https://cdn-aws.arclip.app/libs/cli/0.1.1/arclip-0.1.1-linux-x64.tar.gz"
      sha256 "68788115dd61495fb1247905103d02c8e46144e52db9059f774e50436def7c3d"
    end
  end

  def install
    bin.install "arclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arclip --version")
  end
end
