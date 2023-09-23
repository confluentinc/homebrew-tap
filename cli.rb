# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "3.34.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.34.1/confluent_3.34.1_darwin_arm64_homebrew.tar.gz"
      sha256 "8cd4cb0f75cbe348aadad9cd9e03be78bd5b77623c2ea0e180eaf69b25f73183"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.34.1/confluent_3.34.1_darwin_amd64_homebrew.tar.gz"
      sha256 "723cac905d196979eddd6cc62851411bb3a36be4316b58c6d136579336e5bf1c"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.34.1/confluent_3.34.1_linux_arm64_homebrew.tar.gz"
      sha256 "1b26a6007cee04891721a29a9b6129eddd8158778244b79a3a4698492781d2f8"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.34.1/confluent_3.34.1_linux_amd64_homebrew.tar.gz"
      sha256 "608ee1b45d782c87fbdeacf321b6a079ab8b1197a20555b6a7b1aea29612aaee"

      def install
        bin.install "confluent"
      end
    end
  end

  test do
    system "#{bin}/confluent version"
  end
end
