# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "1.12.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/futurice/jalapeno/releases/download/v1.12.0/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4a1cee0ee2bd232c3ddd2bc20b9fb47e377dfedbaff2cc1464e086b55959b322"

      def install
        bin.install "jalapeno"
      end
    end
    on_arm do
      url "https://github.com/futurice/jalapeno/releases/download/v1.12.0/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "aa126031ab0ff8b37a1bd15be97d710bb20bb23fa6855f78884a7c78b7012081"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.12.0/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "79c5c734b862d2a66dfd33a49530ef135d0eace39f350495ad8c4eac7042abaa"

        def install
          bin.install "jalapeno"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.12.0/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "ea310ced1e245ed4d4623302722eea9c7c5d38bb1598c137a38f43a76671deb5"

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
