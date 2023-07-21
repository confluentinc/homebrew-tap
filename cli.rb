# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "3.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.24.0/confluent_3.24.0_darwin_arm64_homebrew.tar.gz"
      sha256 "414bfb221ca479bd90969c0aeadafbdc5b05da2a02529eebb385917e7e09fede"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.24.0/confluent_3.24.0_darwin_amd64_homebrew.tar.gz"
      sha256 "12b769a889d4a5bfeb41812ce7ee27af7b319875c0c05232a4a107fd31bef336"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.24.0/confluent_3.24.0_linux_arm64_homebrew.tar.gz"
      sha256 "4b92d95bd4aa969ca3151e2abde853d127bfd903cb18cc10ab53a17b11e39a05"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.24.0/confluent_3.24.0_linux_amd64_homebrew.tar.gz"
      sha256 "f62514a77a2a5f030d8601fafdda3dca19a3e126fb928c2553f02dd9582bf107"

      def install
        bin.install "confluent"
      end
    end
  end

  test do
    system "#{bin}/confluent version"
  end
end
