# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Contentfulproxy < Formula
  desc "An experimental proxy for read access to contentful to save your API quota"
  homepage "https://github.com/foomo/contentfulproxy"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/contentfulproxy/releases/download/v0.1.0/contentfulproxy_0.1.0_darwin_amd64.tar.gz"
      sha256 "fdb505c7ee83ee88ebdee797e8789152fdc10d5250edd9e95b34cbd31d93d1f1"

      def install
        bin.install "contentfulproxy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/foomo/contentfulproxy/releases/download/v0.1.0/contentfulproxy_0.1.0_linux_amd64.tar.gz"
      sha256 "f21a0e8b023d73ee5b2eca98db80719acaa8bd43a3f175fb70f01886ea05a666"

      def install
        bin.install "contentfulproxy"
      end
    end
  end

  def caveats; <<~EOS
    contentfulproxy -webserver-address=$CONTENTFULPROXY_SERVER_ADDR
  EOS
  end
end
