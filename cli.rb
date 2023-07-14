# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "3.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.22.0/confluent_3.22.0_darwin_arm64_homebrew.tar.gz"
      sha256 "ea877ebbc9bc673c2a278faea27cb74f881c111d00563dbf47bfb1a2bf57a5b4"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.22.0/confluent_3.22.0_darwin_amd64_homebrew.tar.gz"
      sha256 "2631fba018167cfb9c2d53f098c2d76b0a8630046f553c0a24e5be9f911697bc"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.22.0/confluent_3.22.0_linux_arm64_homebrew.tar.gz"
      sha256 "7beee8c900d3194e45da6a8feda09624fcf197380d0fb205ea0ccf963b70c4e0"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.22.0/confluent_3.22.0_linux_amd64_homebrew.tar.gz"
      sha256 "2dffc2927bc661b09c0749de2ec7bfa2f43ebb2a4baa1d6f5cb7ffdaa89b219f"

      def install
        bin.install "confluent"
      end
    end
  end

  test do
    system "#{bin}/confluent version"
  end
end
