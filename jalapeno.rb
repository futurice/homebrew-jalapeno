# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "0.1.23"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.23/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "faae4be0fe28b7bcc844d555d7cee000a8df1bb4ee85f97099b2ea67fe448fa1"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.23/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "11a74d2b3cb26ca159904d48fbfc87ba46738dce7aafb2f96e998faab755fdfe"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.23/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3be80ece6923ccbbf24b7c802fccbb4126329d93305492eaf3bde1e98022acd2"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.23/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9b412307ff3803a66a79de1b386a57f1f91e174504bb7c4d1194fd446e12e5a8"

      def install
        bin.install "jalapeno"
      end
    end
  end

  test do
    system "#{bin}/jalapeno --version"
  end
end
