class Goto < Formula
  include Language::Python::Virtualenv

  desc "A command line tool to make and use magic shortcuts that are project context aware."
  homepage "http://gotogoto.ninja"
  url "https://github.com/technocake/goto/raw/homebrew/archive/goto-0.1.1.tar.gz"
  sha256 "8c0b772fb20b5f14fb7ba2ab994e57353acc35752f4cb7ad4185699a93827960"
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
