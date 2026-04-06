class SdlcWizard < Formula
  desc "SDLC enforcement for Claude Code - TDD, planning, self-review, CI shepherd"
  homepage "https://github.com/BaseInfinity/agentic-ai-sdlc-wizard"
  url "https://registry.npmjs.org/agentic-sdlc-wizard/-/agentic-sdlc-wizard-1.28.0.tgz"
  sha256 "0ef9334722c17caf05a7e45db9f8411b166d202f46af847d93584ba13bd0e8f5"
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
