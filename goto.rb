class Goto < Formula
  include Language::Python::Virtualenv

  desc "A command line tool to make and use magic shortcuts that are project context aware."
  homepage "http://gotogoto.ninja"
  url "https://github.com/technocake/goto/raw/homebrew/archive/goto-0.1.0.tar.gz"
  sha256 "a27c506f57a1379998e1ad55c647349badf55b9e"
  version "0.1.0"

  bottle :unneeded

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec
    libexec.install Dir["src"]
    bin.install "src/bin/goto"
    bin.install "src/bin/project"
    bin.install "src/bin/start_goto"
    bash_completion.install "bin/start_goto"
  end
end