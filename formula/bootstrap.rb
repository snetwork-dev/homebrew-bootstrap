class Bootstrap < Formula
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://github.com/snetwork-dev/bootstrap/archive/refs/tags/0.1.tar.gz",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: bearer ENV['HOMEBREW_GITHUB_API_TOKEN']"
      ]
  version "0.1.0"
  license ""

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
