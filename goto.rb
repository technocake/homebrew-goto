class Goto < Formula
  include Language::Python::Virtualenv

  desc "A command line tool to make and use magic shortcuts that are project context aware."
  homepage "http://gotogoto.ninja"
  url "https://github.com/technocake/goto/raw/homebrew/archive/goto-0.1.0.tar.gz"
  sha256 "9699c8cedf78f89dab10ea9924bc84d59345e6f052d66d2a00764c8f3e468d1b"
  version "0.1.0"

  bottle :unneeded

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec
    libexec.install Dir["src"]
    bin.install "src/bin/goto.sh"
    bin.install "src/bin/project.sh"
    bin.install "src/bin/start_goto.sh"
    bash_completion.install "bin/start_goto.sh"
  end
end
