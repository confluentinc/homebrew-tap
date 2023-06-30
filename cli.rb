# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "3.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.20.0/confluent_3.20.0_darwin_arm64_homebrew.tar.gz"
      sha256 "abf7977d2fabbb7620349d6b949136fae1f917243826335b19ebb85c393cc6ef"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.20.0/confluent_3.20.0_darwin_amd64_homebrew.tar.gz"
      sha256 "bae8848e8ae46be6e94430623851e959a64b0fb761b603787120a873c6b3c947"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.20.0/confluent_3.20.0_linux_arm64_homebrew.tar.gz"
      sha256 "8c8490f5ba85fd41b7dde7ef6f2de8fd386f087ae3655ecfc759ff27e5d64447"

      def install
        bin.install "confluent"
      end
    end
    if Hardware::CPU.intel?
      url "https://s3-us-west-2.amazonaws.com/confluent.cloud/confluent-cli/archives/3.20.0/confluent_3.20.0_linux_amd64_homebrew.tar.gz"
      sha256 "b8aee08f6cc2cae7de3dfb3241a30090cef247978d8e5e132d349210239a0abe"

      def install
        bin.install "confluent"
      end
    end
  end

  test do
    system "#{bin}/confluent version"
  end
end
