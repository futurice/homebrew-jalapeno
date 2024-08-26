# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "1.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/futurice/jalapeno/releases/download/v1.13.0/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4936850847985e8bd83b304fc22918af7e2123934424b2f88c923813d4612904"

      def install
        bin.install "jalapeno"
      end
    end
    on_arm do
      url "https://github.com/futurice/jalapeno/releases/download/v1.13.0/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6b6f10531c4e392217e940459fd209a50b746baa44a78f6a832372e6f9f16fa2"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.13.0/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "6ce00c58f7edc496d4cb03a8a65ac37ffcee09101e3286a73ab66196759ca0dc"

        def install
          bin.install "jalapeno"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.13.0/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "d9930ebfec3770cafb1e978c36517414f36b6a919ccc5500113056ab80a5cf52"

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
