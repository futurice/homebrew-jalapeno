# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jalapeno < Formula
  desc "Jalapeno is a CLI for creating, managing and sharing spiced up project templates"
  homepage "https://futurice.github.io/jalapeno/"
  version "1.14.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/futurice/jalapeno/releases/download/v1.14.2/jalapeno-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7e749ecc58739b047a4ac0325ddaab4be6d7e6d3475bc8236be8b42bbc7c6840"

      def install
        bin.install "jalapeno"
      end
    end
    on_arm do
      url "https://github.com/futurice/jalapeno/releases/download/v1.14.2/jalapeno-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a9ce614df844848cd6c0f8476ed8f7160c76de31ace84a4eb39c3f41fdb6dab0"

      def install
        bin.install "jalapeno"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.14.2/jalapeno-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "f5f0e3272684d1b3036492d1d9e50fd7a1547bcb4daf3c5a07a32ce396bd514a"

        def install
          bin.install "jalapeno"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/futurice/jalapeno/releases/download/v1.14.2/jalapeno-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "86fa45dd4faa17334ea44a0e82b382bc7dd6ca26bde718dfda12f11b5d64d407"

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
