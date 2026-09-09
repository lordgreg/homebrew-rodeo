class Rodeo < Formula
  desc "Dual-pane terminal file manager with Vim-style keybindings"
  homepage "https://github.com/lordgreg/rodeo"
  # Populated automatically by rodeo's release.yml on every published tag.
  url "https://github.com/lordgreg/rodeo/releases/download/v0.4.5/rodeo-0.4.5-aarch64-apple-darwin.tar.gz"
  sha256 "88b9258c0618d25b73756cdcaa3e273f2f7f516c5b683656e0989f68ad08263d"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "rodeo"
    man1.install "rodeo.1" if File.exist?("rodeo.1")
    doc.install "README.md"
    pkgshare.install "themes"
  end

  test do
    assert_match "rodeo", shell_output("#{bin}/rodeo --version")
  end
end
