class Bootstrap < Formula
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://github.com/snetwork-dev/bootstrap/archive/refs/tags/0.1.tar.gz", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "53542da0df2991adfbed30398e906f01de9863a87250be98874751a8783be246"
  version "0.1.0"
  license ""

  def install
    bin.install "test.sh"
    bin.install_symlink "#{prefix}/bin/test.sh" => "testsymlinknew"
  end
end
