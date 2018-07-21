class Aah < Formula
    desc "aah framework CLI, a developer assistant"
    homepage "https://aahframework.org"
    version "0.12.1"

    if OS.mac?
        url "https://dl.aahframework.org/releases/cli/0.12.1/aah-darwin-amd64.zip"
        sha256 "28a179966ba6f91b4bc6283d4b2ef26f8cb2809b57ad8752bd0326e2c4a2495b"
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
