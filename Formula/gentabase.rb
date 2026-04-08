class Gentabase < Formula
  desc "Gentabase CLI — manage local development, migrations, and deployments"
  homepage "https://gentabase.dev"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    else
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    else
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
    end
  end

  def install
    bin.install "gentabase"
  end

  test do
    assert_match "Gentabase CLI", shell_output("#{bin}/gentabase --help")
  end
end
