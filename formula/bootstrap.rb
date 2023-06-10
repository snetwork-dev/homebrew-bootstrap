require_relative "lib/custom_download_strategy"

class Bootstrap < Formula
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://api.github.com/repos/snetwork-dev/bootstrap/releases/assets/112025963", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "5e469655b9586371f12d7f8c1aebf39e3706e23512e572e74bf3649ca77b23b9"
  version "0.1.0"
  license ""

  def install
    bin.install "test.sh"
    bin.install_symlink "#{prefix}/bin/test.sh" => "testsymlinknew"
  end
end
