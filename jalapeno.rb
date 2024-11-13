# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "1.14.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/futurice/jalapeno/releases/download/v1.14.6/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "44f383b2f1a437014bff31570c58793ca06374c4ec5d44342bc41a2005e7a94a"

      def install
        bin.install "jalapeno"
      end
    end
    on_arm do
      url "https://github.com/futurice/jalapeno/releases/download/v1.14.6/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9e39515fde1a4367a95f0fa036f55ce24629d744df7cb32254663c4e5a3949e3"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.14.6/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "718ab9dd24eb3f9504c1ef3d14771b168d473c38253611ae5cfaf8013f9bd0f4"

        def install
          bin.install "jalapeno"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.14.6/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "c613186ad49565f042c1003c933acb73b1cc7a89107227830cc16e749f883d94"

        def install
          bin.install "jalapeno"
        end
      end
    end
  end

  test do
    system "#{bin}/jalapeno --version"
  end
end
