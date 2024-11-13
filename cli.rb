# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "4.10.0"

  on_macos do
    on_intel do
      url "https://packages.confluent.io/confluent-cli/archives/4.10.0/confluent_darwin_amd64_disableupdates.tar.gz"
      sha256 "a496f22eb7200c80a77685352286bc2174236d17ba5dd31c9e20f4d599bff28a"

      def install
        bin.install "confluent"
      end
    end
    on_arm do
      url "https://packages.confluent.io/confluent-cli/archives/4.10.0/confluent_darwin_arm64_disableupdates.tar.gz"
      sha256 "b1b8d2a5bb34109a89b8f65bf14039cd4cd58dd2ee63fb68794f5a372fa049f7"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://packages.confluent.io/confluent-cli/archives/4.10.0/confluent_linux_amd64_disableupdates.tar.gz"
        sha256 "bd98d04176e03d2a52720f4668f311c0b90c65a8189d297fc61de5edbfeb4d89"

        def install
          bin.install "confluent"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://packages.confluent.io/confluent-cli/archives/4.10.0/confluent_linux_arm64_disableupdates.tar.gz"
        sha256 "897c7f298eca8e0b37d33d86d70cd0d0586b788b5dcd3f77138178a947e0edd3"

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
