# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gorereleaser < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://support.cimpress.cloud/hc/en-us/articles/227873908"
  version "0.1.14"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://gorereleaser-tst.s3.us-east-1.amazonaws.com/gorereleaser/v0.1.14/gorereleaser_0.1.14_Darwin_x86_64.tar.gz"
      sha256 "9cdf6980f68f86254d18bfc4ddf114eb6f5fc606aca268d77002af01a885bf6c"
    end
    if Hardware::CPU.arm?
      url "https://gorereleaser-tst.s3.us-east-1.amazonaws.com/gorereleaser/v0.1.14/gorereleaser_0.1.14_Darwin_arm64.tar.gz"
      sha256 "30ff3c3958bd0eab7920d243002806d936e8b63675f95e6ef7fea756125551f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://gorereleaser-tst.s3.us-east-1.amazonaws.com/gorereleaser/v0.1.14/gorereleaser_0.1.14_Linux_x86_64.tar.gz"
      sha256 "79dd33f9d340122b8f14ee0ba3eadc2aa4f51c0c9f6c8eb4213b907acb5e7a2e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://gorereleaser-tst.s3.us-east-1.amazonaws.com/gorereleaser/v0.1.14/gorereleaser_0.1.14_Linux_arm64.tar.gz"
      sha256 "fc84d08327c505eef20d219e34c198d000060d02755791345e8674ba1474105f"
    end
  end

  def install
    bin.install "gorereleaser"
  end

  def caveats; <<~EOS
    This is a helpful message to make people happy.
  EOS
  end

  test do
    system "#{bin}/gorereleaser"
  end
end
