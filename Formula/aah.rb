class Aah < Formula
    desc "aah framework CLI, a developer assistant"
    homepage "https://aahframework.org"
    version "0.12.0"

    if OS.mac?
        url "https://dl.aahframework.org/releases/cli/0.12.0/aah_darwin_amd64.zip"
        sha256 "9d04518107c8a23b3f1cde49360da5a2710d3f2b9b2be9d5faa8052c75458179"
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
