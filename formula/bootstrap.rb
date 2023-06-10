class Bootstrap < Formula
  system "echo", ENV["HOMEBREW_GITHUB_API_TOKEN"]
  desc "S-Network Bootstrap test"
  homepage "https://github.com/snetwork-dev/bootstrap"
  url "https://github.com/snetwork-dev/bootstrap/archive/refs/tags/0.1.tar.gz",
      headers: [
        "Accept: application/octet-stream",
        "Authorization: bearer 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"
      ]
  version "0.1.0"
  license ""

  def install
    bin.install "test.sh"
    bin.install_symlink "#{prefix}/bin/test.sh" => "testsymlinknew"
  end
end
