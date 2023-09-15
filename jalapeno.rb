# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.4/jalapeno-darwin-arm64", using: CurlDownloadStrategy
      sha256 "7c30b973e8eca509b2c9b601984df321b7b6c25236c1feb5a70c1ecb46b8e511"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.4/jalapeno-darwin-amd64", using: CurlDownloadStrategy
      sha256 "51dd88e86b7f40baf56a09644fd5131dd02dffa47e29d387b5a6a93ff112a77f"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.4/jalapeno-linux-arm64", using: CurlDownloadStrategy
      sha256 "a10ba290c551a7b567645da2cb873d6380f4a054c0a7636f33394e4ff61a30ed"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v0.1.4/jalapeno-linux-amd64", using: CurlDownloadStrategy
      sha256 "c0f9fe85f8239039a679d689fe2b1b3c996ea0b7496b39b92e47367108cd06e6"

      def install
        bin.install "jalapeno"
      end
    end
  end

  test do
    system "#{bin}/jalapeno --version"
  end
end
