# This file was generated by GoReleaser. DO NOT EDIT.
class PygmyGo < Formula
  desc "amazee.io's local development helper tool"
  homepage "https://github.com/fubarhouse/pygmy-go"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.1/pygmy-go_0.3.1_darwin_amd64.tar.gz"
    sha256 "42a98b34e17d4301abec30125f356e2f9f4d02183a92dd169eb1a681a2b7b65c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.1/pygmy-go_0.3.1_linux_amd64.tar.gz"
      sha256 "cf16ec8fb6eedf86e6c5b65955373b513b31fcb1100fa400a222d2771fc15815"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.1/pygmy-go_0.3.1_linux_arm64.tar.gz"
        sha256 "4aea5f4716c3b6ed1453edcbb09936baa034371102f1a87e7d875045320ca9c8"
      else
        url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.1/pygmy-go_0.3.1_linux_armv6.tar.gz"
        sha256 "2bd30602da6e82b1af521479d8182edd098389842e5551cb876dfb14292b776c"
      end
    end
  end

  def install
    bin.install "pygmy-go"
  end

  test do
    system "#{bin}/pygmy-go version"
  end
end
