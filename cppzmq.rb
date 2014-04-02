require "formula"

class Cppzmq < Formula
  homepage "https://github.com/zeromq/cppzmq"
  head "https://github.com/zeromq/cppzmq.git"
  def install
    include.install "zmq.hpp"
  end
end
