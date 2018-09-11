class Goto < Formula
  include Language::Python::Virtualenv

  desc "A command line tool to make and use magic shortcuts that are project context aware."
  homepage "http://gotogoto.ninja"
  url "https://github.com/technocake/goto/raw/homebrew/archive/goto-0.1.1.tar.gz"
  sha256 "510443b269300be0c8bf8f6bbace0f7256f47c9482f444795a2acfc70ea707b8"
  version "0.1.1"

  bottle :unneeded

  def install
    ENV.prepend_create_path "PYTHONPATH", "#{prefix}/src"
    bin.install "src/bin/goto"
    bin.install "src/bin/project"
    bin.install "src/bin/start_goto"
    prefix.install Dir["src/*"]
    libexec.install Dir["src/*"]
    #bin.install "src/the_real_goto.py"
    #bash_completion.install "src/bin/start_goto"
  end
end
