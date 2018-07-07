class Aah < Formula
    desc "aah framework CLI, a developer assistant"
    homepage "https://aahframework.org"
    version "0.11.0"

    if OS.mac?
        url "https://dl.aahframework.org/releases/cli/0.11.0/aah_darwin_amd64.zip"
        sha256 "4acbd43a00c48f6234b1c3a68e3a7b12d3a98eea4af9533c56637bf10bce0aaa"
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
