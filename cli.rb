# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "3.47.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.47.0/confluent_3.47.0_darwin_arm64_disableupdates.tar.gz"
      sha256 "69d2cf7ac9b551f921589798fef0ea91b2f18ea13e07a5a75edcfd76ffd17d7b"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.47.0/confluent_3.47.0_darwin_amd64_disableupdates.tar.gz"
      sha256 "cf5533084b06fd65edc65f6caccf6c221f7d348119b0e333b60182aca2694971"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.47.0/confluent_3.47.0_linux_arm64_disableupdates.tar.gz"
      sha256 "b4253a5448a99284261679053af53b852d5deb793f5d1082001df78f6eec25b8"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.47.0/confluent_3.47.0_linux_amd64_disableupdates.tar.gz"
      sha256 "7c179f39f71674a80c8ccf504307d50cde015373552cf551b113ee065be8646c"

      def install
        bin.install "confluent"
      end
    end
  end

  test do
    system "#{bin}/confluent version"
  end
end
