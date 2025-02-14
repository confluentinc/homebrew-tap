# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "CLI for Confluent Cloud and Confluent Platform"
  homepage "https://docs.confluent.io/confluent-cli/current/overview.html"
  version "4.17.0"

  on_macos do
    on_intel do
      url "https://packages.confluent.io/confluent-cli/archives/4.17.0/confluent_darwin_amd64_disableupdates.tar.gz"
      sha256 "a501ee5e140bf1bb1e81ad0d57d13bc39e3b4a7df4df7a88e0ab52e315970ade"

      def install
        bin.install "confluent"
      end
    end
    on_arm do
      url "https://packages.confluent.io/confluent-cli/archives/4.17.0/confluent_darwin_arm64_disableupdates.tar.gz"
      sha256 "e23e240b908bd58810a3917f7c27859e790d7922778142780c00fc597d197a4d"

      def install
        bin.install "confluent"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://packages.confluent.io/confluent-cli/archives/4.17.0/confluent_linux_amd64_disableupdates.tar.gz"
        sha256 "aba1f772a737613b5ff353f345fe9159b6f433d37e698e9ed9066138551337ae"

        def install
          bin.install "confluent"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://packages.confluent.io/confluent-cli/archives/4.17.0/confluent_linux_arm64_disableupdates.tar.gz"
        sha256 "cd9e0f1f2147a1590249f9f8d185a484481b198525b5d4cc242b1e974469c512"

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
