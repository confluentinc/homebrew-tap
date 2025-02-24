# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "4.18.0"

  on_macos do
    on_intel do
      url "https://packages.confluent.io/confluent-cli/archives/4.18.0/confluent_darwin_amd64_disableupdates.tar.gz"
      sha256 "6a445f30e7cda82b28d9a7557aeed4ebafad7e37cfcfea971f5ad4dca4a6decc"

      def install
        bin.install "confluent"
      end
    end
    on_arm do
      url "https://packages.confluent.io/confluent-cli/archives/4.18.0/confluent_darwin_arm64_disableupdates.tar.gz"
      sha256 "c4a387407e9872eb4a7fc6da1d8108305012cb42f86493a74fbc27a3dce27b3c"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://packages.confluent.io/confluent-cli/archives/4.18.0/confluent_linux_amd64_disableupdates.tar.gz"
        sha256 "15c2d2491f023bdcd13c73e4a57bf38a4cc81f7e94e3f204161ec6dbbff60b22"

        def install
          bin.install "confluent"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://packages.confluent.io/confluent-cli/archives/4.18.0/confluent_linux_arm64_disableupdates.tar.gz"
        sha256 "f429a9c1a97aadfff09b8ce2b2ebffd0112a1afd7e4ebb30d4fa69aef35047ce"

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
