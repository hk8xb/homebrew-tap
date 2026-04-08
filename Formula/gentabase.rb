class Gentabase < Formula
  desc "Gentabase CLI — manage local development, migrations, and deployments"
  homepage "https://gentabase.dev"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_darwin_arm64.tar.gz"
      sha256 "16fe7cf72ce229dd44f9e96d15b1b897926d8b8d094b1c192c3aedd7e18ee7a4"
    else
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_darwin_amd64.tar.gz"
      sha256 "70be47809df01afef431a75bd58dc0bc542ab4fe0fd0da09e9d76d3d215aa562"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_linux_arm64.tar.gz"
      sha256 "a9f6024bcfc37300f0724c6d5b304658fdc744cc97b825c07ad8e27d199c8a44"
    else
      url "https://github.com/hk8xb/gentabase-cli/releases/download/v#{version}/gentabase_linux_amd64.tar.gz"
      sha256 "93c171052b0d6209c7bb0aa7b84ffcebae8c864fd622725139af22ddfb4a28ff"
    end
  end

  def install
    bin.install "gentabase"
  end

  test do
    assert_match "Gentabase CLI", shell_output("#{bin}/gentabase --help")
  end
end
