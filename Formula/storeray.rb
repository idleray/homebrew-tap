class Storeray < Formula
  desc "A lightweight CLI for App Store Connect & Google Play metadata management"
  homepage "https://github.com/idleray/storeray"
  version "1.0.0"
  url "https://github.com/idleray/storeray/releases/download/v#{version}/storeray-v#{version}.zip"
  sha256 "3b0c94af2f18b1c511889da86931e4f3e3d337f9ca9c3c734d41b665dd56986f"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/storeray"
  end

  test do
    assert_match "storeray", shell_output("#{bin}/storeray --help")
  end
end
