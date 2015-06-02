require 'formula'

# Winpdb homebrew formula
# https://github.com/Homebrew/homebrew/pull/5772
# https://github.com/Homebrew/homebrew/pull/5772/files

class WinpdbDev < Formula
  url 'http://winpdb.googlecode.com/files/winpdb-1.4.8.zip'
  homepage 'http://winpdb.org/'
  sha1 '56ce8e3db02583e7205e4ac1bcd811c827a6e003'

  depends_on 'wxpython'

  def install
    # Find the arch for the Python we are building against.
    # We remove 'ppc' support, so we pass Intel-optimized CFLAGS.
    archs = archs_for_command("python")
    archs.remove_ppc!
    ENV['ARCHFLAGS'] = archs.as_arch_flags

    system "python", "setup.py", "install", "--prefix=#{prefix}"
  end
end
