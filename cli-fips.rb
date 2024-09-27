# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CliFips < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "4.5.0"
  depends_on :macos

  on_intel do
    url "https://packages.confluent.io/confluent-cli/archives/4.5.0/confluent-fips_darwin_amd64_disableupdates.tar.gz"
    sha256 "b8fc81e3971e01ec1fd1072d6c62833fbec2e0f02e999a487c8abaf6b20df4d1"

    def install
      bin.install "confluent"
    end
  end
  on_arm do
    url "https://packages.confluent.io/confluent-cli/archives/4.5.0/confluent-fips_darwin_arm64_disableupdates.tar.gz"
    sha256 "63e0918a72acfdeaa3d061b8f3303515e89d385021739c1fa140093486fe4b7e"

    def install
      bin.install "confluent"
    end
  end
end
