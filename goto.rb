class Goto < Formula
  include Language::Python::Virtualenv

  desc "A command line tool to make and use magic shortcuts that are project context aware."
  homepage "http://gotogoto.ninja"
  url "https://github.com/technocake/goto/raw/homebrew/archive/goto-0.1.0.tar.gz"
  sha256 "9699c8cedf78f89dab10ea9924bc84d59345e6f052d66d2a00764c8f3e468d1b"
  version "0.1.1"

  bottle :unneeded

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec
    libexec.install Dir["goto/src"]
    bin.install "src/bin/goto"
    bin.install "src/bin/project"
    bin.install "src/bin/start_goto"
    #bash_completion.install "src/bin/start_goto"
  end
end
