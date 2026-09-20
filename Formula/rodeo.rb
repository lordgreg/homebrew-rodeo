class Rodeo < Formula
  desc "Dual-pane terminal file manager with Vim-style keybindings"
  homepage "https://github.com/lordgreg/rodeo"
  # Populated automatically by rodeo's release.yml on every published tag.
  url "https://github.com/lordgreg/rodeo/releases/download/v0.5.1/rodeo-0.5.1-aarch64-apple-darwin.tar.gz"
  sha256 "6ecdfacab131ebe166f16e2df60c54a4b9fd404e5575f933cda0cebdd5b14030"
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
