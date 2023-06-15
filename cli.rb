# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "3.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.18.0/confluent_3.18.0_darwin_arm64_homebrew.tar.gz"
      sha256 "047cdab3bfbae0d31686eba5526995f68104cc0ebd59d10e0a0e78603aab45be"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.18.0/confluent_3.18.0_darwin_amd64_homebrew.tar.gz"
      sha256 "c9ef11ae49b9bf182053d49afe0cf46fe82b9d423319e332364e593a004607ec"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.18.0/confluent_3.18.0_linux_arm64_homebrew.tar.gz"
      sha256 "740dab9e990270344001eb9e433cfb333b3e29665004e2291d87496cfdfa64ff"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.18.0/confluent_3.18.0_linux_amd64_homebrew.tar.gz"
      sha256 "6a457a6fc7f935bd2c8cfebac02254e31133bb4a666d102b7a5842089dd515d7"

      def install
        bin.install "confluent"
      end
    end
  end

  test do
    system "#{bin}/confluent version"
  end
end
