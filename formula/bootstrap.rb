class Bootstrap < Formula
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://github.com/snetwork-dev/bootstrap/tarball/master",
      headers: [
        "Authorization: Bearer #{ENV['HOMEBREW_GITHUB_API_TOKEN']}"
      ]
  license :cannot_represent
  version "0.1"

  def install
    if ENV['ZSH_VERSION'] != ""
      bin.install "test.zsh"
      bin.install_symlink "#{prefix}/bin/test.zsh" => "testsymlinknew"
    elsif ENV['BASH_VERSION'] != ""
      bin.install "test.sh"
      bin.install_symlink "#{prefix}/bin/test.sh" => "testsymlinknew"
    end
  end
end
