# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CliFips < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "4.10.0"
  depends_on :macos

  on_intel do
    url "https://packages.confluent.io/confluent-cli/archives/4.10.0/confluent-fips_darwin_amd64_disableupdates.tar.gz"
    sha256 "fa3588cbc4b966b6abc3ef04a327dd00350522bdebc2b1f305b99b4034c7b0a7"

    def install
      bin.install "confluent"
    end
  end
  on_arm do
    url "https://packages.confluent.io/confluent-cli/archives/4.10.0/confluent-fips_darwin_arm64_disableupdates.tar.gz"
    sha256 "e523547a0b21fe00942e4d7cc20096293a64f63ef3a82a8070c6e1d061a64370"

    def install
      bin.install "confluent"
    end
  end
end
