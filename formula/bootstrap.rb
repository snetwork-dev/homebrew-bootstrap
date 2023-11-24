class Bootstrap < Formula
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://api.github.com/repos/snetwork-dev/bootstrap/tarball/main",
      headers: [
        "Authorization: Bearer ENV['HOMEBREW_GITHUB_API_TOKEN']"
      ]
  version "0.1.13"
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
