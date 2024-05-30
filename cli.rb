# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "3.62.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.62.0/confluent_3.62.0_darwin_arm64_disableupdates.tar.gz"
      sha256 "e77efbc22525b391b1043be23bf6fb85b8dd1bf8ebced83961c22eca9a0b2a22"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.62.0/confluent_3.62.0_darwin_amd64_disableupdates.tar.gz"
      sha256 "9fcb7853a6ca795b0b4d7b44164dd32b4e379571e45eb2a3f625aadd93b3317d"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.62.0/confluent_3.62.0_linux_arm64_disableupdates.tar.gz"
      sha256 "8df43690b1fdceaadc88fcae3766b384a8a4e913c07d6901a00d1b23be72cc3e"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.62.0/confluent_3.62.0_linux_amd64_disableupdates.tar.gz"
      sha256 "2c9cbf918f53612cbd264e28083de8907a8ca6d52617ee1149a12ca87a2fb94e"

      def install
        bin.install "confluent"
      end
    end
  end

  test do
    system "#{bin}/confluent version"
  end
end
