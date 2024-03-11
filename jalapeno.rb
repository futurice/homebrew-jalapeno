# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "1.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/futurice/jalapeno/releases/download/v1.7.0/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9a9f2b6a4d3fe6b78273048eabb3314af07d2be453f8974b97eb366010baee25"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v1.7.0/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "472e008bec0669c4bf5c7845b7547fe92aefe6932a8d5a50064fb7f666bee50a"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v1.7.0/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9cd4a2dfea1a9ba3a4d86e7312299f00d84bb53c77f88f0d3657e29a2fc46bc2"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/futurice/jalapeno/releases/download/v1.7.0/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "563c426501ec25cb2c72fceab5cb543a471e86339d3d8dc96b065981887f61b5"

      def install
        bin.install "jalapeno"
      end
    end
  end

  test do
    system "#{bin}/jalapeno --version"
  end
end
