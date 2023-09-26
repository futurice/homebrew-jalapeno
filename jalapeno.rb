# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.11/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f6032d588ebbb33f25708339e1fb9de90d5db426ce604273dea1b0ee3305d508"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.11/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e94a096339efc10bceedab1d486892920c1338b958bc688b250b8ddff4bada5"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.11/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3b4a3f353fd2fa5dc30b94c6a8563ae48cdba654847f64c9b1b61b674083957d"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.11/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "df0fd773bd5cdcf054aaeaf390dcbe75b1db5e904b693ac71a66657256377ada"

      def install
        bin.install "jalapeno"
      end
    end
  end

  test do
    system "#{bin}/jalapeno --version"
  end
end
