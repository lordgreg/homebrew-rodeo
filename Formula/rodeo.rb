class Rodeo < Formula
  desc "Dual-pane terminal file manager with Vim-style keybindings"
  homepage "https://github.com/lordgreg/rodeo"
  # Populated automatically by rodeo's release.yml on every published tag.
  url "https://github.com/lordgreg/rodeo/releases/download/v0.4.1/rodeo-0.4.1-aarch64-apple-darwin.tar.gz"
  sha256 "a33cc48c41248c649f24f7246332543327124c3082af86d55d476182046ad3b7"
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
