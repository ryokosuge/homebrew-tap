class KindleHighlightSync < Formula
  desc "Sync Kindle highlights and notes to a Notion Books database"
  homepage "https://github.com/ryokosuge/kindle-highlight-sync-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryokosuge/kindle-highlight-sync-cli/releases/download/v0.1.1/kindle-highlight-sync_v0.1.1_darwin_arm64.tar.gz"
      sha256 "11a1751cec170872b7994e0690e04469b571c0ee8b7c9c4577b0317be51d8c64"
    end
    on_intel do
      url "https://github.com/ryokosuge/kindle-highlight-sync-cli/releases/download/v0.1.1/kindle-highlight-sync_v0.1.1_darwin_amd64.tar.gz"
      sha256 "c8875e5c3b18dae63ff73cc273ba75536095a7fee59b5cb9ed0fbadb1a6d9093"
    end
  end

  def install
    bin.install "kindle-highlight-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kindle-highlight-sync --version")
  end
end
