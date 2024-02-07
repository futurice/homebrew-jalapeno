# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "1.3.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v1.3.5/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "145f931de82c337f1f401ca61eb6c04eaa1d4a4bee3d71ffc11ad81eea5ce440"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/futurice/jalapeno/releases/download/v1.3.5/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e8ecae7c39d594322dde731ecffc26ed53dc5e2015fd640919c3e26eefd6ba59"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/futurice/jalapeno/releases/download/v1.3.5/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3665a4e2394882e9f57f07a891825edc8990760b62be710d4a148f6626c175f9"

      def install
        bin.install "jalapeno"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/futurice/jalapeno/releases/download/v1.3.5/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "1ef1dd5ddcf539884cd80bb3582f14b205520bb946a40291e5aa8f9319d96dbb"

      def install
        bin.install "jalapeno"
      end
    end
  end

  test do
    system "#{bin}/jalapeno --version"
  end
end
