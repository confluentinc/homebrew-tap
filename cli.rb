# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "4.8.0"

  on_macos do
    on_intel do
      url "https://packages.confluent.io/confluent-cli/archives/4.8.0/confluent_darwin_amd64_disableupdates.tar.gz"
      sha256 "7d002752dde54605915ac4c91df898df72068a390110d5aa6115ae897691e6d1"

      def install
        bin.install "confluent"
      end
    end
    on_arm do
      url "https://packages.confluent.io/confluent-cli/archives/4.8.0/confluent_darwin_arm64_disableupdates.tar.gz"
      sha256 "697c5239c1011695bb883d7fab390bb0bf017e446571def4629dda78e85dbea6"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://packages.confluent.io/confluent-cli/archives/4.8.0/confluent_linux_amd64_disableupdates.tar.gz"
        sha256 "7d6a1192f88034e5ef83f5c1f6da0cd1f68e7d257c00b06a406e7409f482073b"

        def install
          bin.install "confluent"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://packages.confluent.io/confluent-cli/archives/4.8.0/confluent_linux_arm64_disableupdates.tar.gz"
        sha256 "b8d91ed975505eb55946b885ec032a070e823193c3b7c4b5adcec8f1d522c54c"

        def install
          bin.install "confluent"
        end
      end
    end
  end

  test do
    system "#{bin}/confluent version"
  end
end
