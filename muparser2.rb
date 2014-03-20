require "formula"

class Muparser2 < Formula
  homepage "https://code.google.com/p/muparser/"
  url "http://muparser.googlecode.com/svn/trunk/"
  version "HEAD"

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool

  conflicts_with 'muparser', :because => 'both install the same files'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
