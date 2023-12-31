# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v1.0.0/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1104569b451d2c3822ada096dc7bc730514bd6a1ac8621a3aa93ed518f5e423e"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/futurice/jalapeno/releases/download/v1.0.0/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "efb044d32dd5c24a90a0e3a1cf3dab2f716f3dd021aca6bc06f15a7868fbc209"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/futurice/jalapeno/releases/download/v1.0.0/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b1dc5640be9c30e354f4e614aa726140e7b69c55152cb24e6d656720fad420b5"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v1.0.0/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f4403f7ca2e4240befa93efd2cdfc89046c02c7ddd808c04bfb353dca35e5e42"

      def install
        bin.install "jalapeno"
      end
    end
  end

  test do
    system "#{bin}/jalapeno --version"
  end
end
