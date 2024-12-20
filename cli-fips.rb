# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CliFips < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "4.14.0"
  depends_on :macos

  on_intel do
    url "https://packages.confluent.io/confluent-cli/archives/4.14.0/confluent-fips_darwin_amd64_disableupdates.tar.gz"
    sha256 "11150f72c6a87c1dad459e93258a02870b1ebcb72e949a8d8a1571230e144789"

    def install
      bin.install "confluent"
    end
  end
  on_arm do
    url "https://packages.confluent.io/confluent-cli/archives/4.14.0/confluent-fips_darwin_arm64_disableupdates.tar.gz"
    sha256 "8d25d885bfa72e3b5f06210336f2a7a2459a4cbd4ccfb61b67ef013c456947ce"

    def install
      bin.install "confluent"
    end
  end
end
