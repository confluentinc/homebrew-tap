# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CliFips < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "4.16.0"
  depends_on :macos

  on_intel do
    url "https://packages.confluent.io/confluent-cli/archives/4.16.0/confluent-fips_darwin_amd64_disableupdates.tar.gz"
    sha256 "74d7f627d30a1ce822ec2d7aa60b3393ccd043ee99277436c7b2db954050f6d9"

    def install
      bin.install "confluent"
    end
  end
  on_arm do
    url "https://packages.confluent.io/confluent-cli/archives/4.16.0/confluent-fips_darwin_arm64_disableupdates.tar.gz"
    sha256 "cc10bec99c8cd65f68498068aa3fb985fb5659095f8a725efced8138719ddbf3"

    def install
      bin.install "confluent"
    end
  end
end
