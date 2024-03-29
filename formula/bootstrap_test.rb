class Bootstrap < Formula
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://github.com/snetwork-dev/bootstrap/archive/refs/tags/v0.0.13.tar.gz",
      headers: [
        "Authorization: Bearer #{ENV['HOMEBREW_GITHUB_API_TOKEN']}"
      ]
  head "https://github.com/snetwork-dev/bootstrap"
  license :cannot_represent
  version "0.0.13"
  sha256 "36c3d71e71bb86c9b36b43df766e6637045b7e233d59e1b93bcc55fb338de301"

  def install
    if ENV['ZSH_VERSION'] != ""
      bin.install "scripts/sshmenu.zsh" => "sshmenu"
      bin.install_symlink "#{prefix}/bin/sshmenu" => "sm"
      bin.install "scripts/test.zsh"
      bin.install_symlink "#{prefix}/bin/test.zsh" => "testsymlinknew"
    elsif ENV['BASH_VERSION'] != ""
      bin.install "scripts/sshmenu.sh" => "sshmenu"
      bin.install_symlink "#{prefix}/bin/sshmenu" => "sm"
      bin.install "scripts/test.sh"
      bin.install_symlink "#{prefix}/bin/test.sh" => "testsymlinknew"
    end
  end
end
