class Bootstrap < Formula
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://github.com/snetwork-dev/bootstrap/archive/refs/tags/v0.0.3.tar.gz",
      headers: [
        "Authorization: Bearer #{ENV['HOMEBREW_GITHUB_API_TOKEN']}"
      ]
  head "https://github.com/snetwork-dev/bootstrap"
  license :cannot_represent
  version "v0.0.9"
  sha256 "8c6b7daf44c4a3bb025887c9985843f1c15278c9ee6fd2b0575bc733767b390f"

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
