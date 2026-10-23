class KindleHighlightSync < Formula
  desc "Sync Kindle highlights and notes to a Notion Books database"
  homepage "https://github.com/ryokosuge/kindle-highlight-sync-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ryokosuge/kindle-highlight-sync-cli/releases/download/v0.1.0/kindle-highlight-sync_v0.1.0_darwin_arm64.tar.gz"
      sha256 "0904015c6c10edbaaa3729cecdd022af19d5b0d78e7845c7fbad5ac0bd5fe5fb"
    end
    on_intel do
      url "https://github.com/ryokosuge/kindle-highlight-sync-cli/releases/download/v0.1.0/kindle-highlight-sync_v0.1.0_darwin_amd64.tar.gz"
      sha256 "eb0afd39dffb1d0fb971b1dfa4d28255f1fc45aa095e93bcff63b6c7156fde96"
    end
  end

  def install
    bin.install "kindle-highlight-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kindle-highlight-sync --version")
  end
end
