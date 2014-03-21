require "formula"

class FuegoDev < Formula
  homepage "http://fuego.sourceforge.net/"
  url "http://svn.code.sf.net/p/fuego/code/trunk"
  version "HEAD"

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool
  depends_on 'boost'

  def install
    system "autoreconf", "-fi"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
