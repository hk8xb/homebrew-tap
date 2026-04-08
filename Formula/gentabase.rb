class Gentabase < Formula
  desc "Gentabase CLI — manage local development, migrations, and deployments"
  homepage "https://gentabase.dev"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_darwin_arm64.tar.gz"
      sha256 "ddeffd4a0867ba99babbb6e65d55acf313013d136bd60c0002aa3ad12464a75b"
    else
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_darwin_amd64.tar.gz"
      sha256 "5b4f51a066d4310bfb2b9c506d565b1d56023419b7333783b98812eb8e1acfab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_linux_arm64.tar.gz"
      sha256 "27102259fa0d4a055631a900eaf5becaf6d87d1942d4cdbee43a117281e4988e"
    else
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_linux_amd64.tar.gz"
      sha256 "73844cbffb5061195bb42ed60658cbf491ebfc716a11804a27baf37180d8d76a"
    end
  end

  def install
    bin.install "gentabase"
  end

  test do
    assert_match "Gentabase CLI", shell_output("#{bin}/gentabase --help")
  end
end
