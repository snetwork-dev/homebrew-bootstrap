class Bootstrap < Formula
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://github.com/snetwork-dev/bootstrap/archive/refs/tags/v0.0.3.tar.gz",
      headers: [
        "Authorization: Bearer #{ENV['HOMEBREW_GITHUB_API_TOKEN']}"
      ]
  head "https://github.com/snetwork-dev/bootstrap"
  license :cannot_represent
  version "0.0.11"
  sha256 "b471e320d69d8354013cf7d9c6c86b5b2df91b4a5689f316f166f7ee2e7964bf"

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
