class SdlcWizard < Formula
  desc "SDLC enforcement for Claude Code - TDD, planning, self-review, CI shepherd"
  homepage "https://github.com/BaseInfinity/agentic-ai-sdlc-wizard"
  url "https://registry.npmjs.org/agentic-sdlc-wizard/-/agentic-sdlc-wizard-1.24.0.tgz"
  sha256 "5397f38a23b3212a9e62bceb37b9b5c9d6f13711c2a7cdba5a7259f44ff31d5c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sdlc-wizard --version")
  end
end
