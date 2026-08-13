class Rodeo < Formula
  desc "Dual-pane terminal file manager with Vim-style keybindings"
  homepage "https://github.com/lordgreg/rodeo"
  # Populated automatically by rodeo's release.yml on every published tag.
  url "https://github.com/lordgreg/rodeo/releases/download/v0.0.0/rodeo-0.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "rodeo"
    man1.install "rodeo.1" if File.exist?("rodeo.1")
    doc.install "README.md"
  end

  test do
    assert_match "rodeo", shell_output("#{bin}/rodeo --version")
  end
end
