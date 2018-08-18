class Aah < Formula
    desc "aah framework CLI, a developer assistant"
    homepage "https://aahframework.org"
    version "0.12.2"

    if OS.mac?
        url "https://dl.aahframework.org/releases/cli/0.12.2/aah-darwin-amd64.zip"
        sha256 "7ea19144f185ad850bd54f37c90faf6c65c49948ed50445520f5bd9f1ffe4fc8"
    elsif OS.linux?
        # upcoming :)
    else
        onoe "Unsupported operating system"
    end

    def install
        bin.install "aah"
    end

    def caveats; <<~EOS
        You may wish to delete `$GOPATH/bin/aah` binary to have smooth experience.
        Since you have successfully installed aah CLI binary distribution.
    EOS
    end

    test do
        assert_match "cli v#{version}", shell_output("#{bin}/aah -v")
    end
end
