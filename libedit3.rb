require "formula"

class Libedit3 < Formula
  homepage "http://thrysoee.dk/editline/"
  url "http://thrysoee.dk/editline/libedit-20140213-3.1.tar.gz"
  sha1 "759c396a7b33829a995904d8fc595600757f0313"
  version '3.1'

  def install
    system "./configure", "--disable-debug", "--prefix=#{prefix}"
    system "make", "install"
  end
end
