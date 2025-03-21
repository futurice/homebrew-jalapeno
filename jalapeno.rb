# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "1.15.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v1.15.3/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f1a19e896fe973bebcde5c0477778fdac4e7181c7f941982bf4791d140257f88"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/futurice/jalapeno/releases/download/v1.15.3/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3fd6293ae38ddbf50fe7535ae15c2d087c10faaa2d0ffa0e316e267b3b270106"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.15.3/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "b7f68d23f2788487a018b08d30801323c25016426dfc2cb552b213a58d07198d"

        def install
          bin.install "jalapeno"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.15.3/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "92b1944c010cc18c2e1f440592be77be576bee0d33224233da6060160722b516"

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
