class Aah < Formula
    desc "aah framework CLI, a developer assistant"
    homepage "https://aahframework.org"
    version "0.11.0-edge"

    depends_on "go"

    if OS.mac?
        url "https://dl.aahframework.org/releases/cli/0.11.0-edge/aah_darwin_amd64.zip"
        sha256 "addee299692f112500d68b7c179f15cb7895a76cd824670d8052295c6200f41c"
    elsif OS.linux?
        # upcoming :)
    else
        onoe "Unsupported operating system"
    end

    def install
        bin.install "aah"
    end

    def caveats; <<~EOS
        You may wish to delete `$GOPATH/bin/aah` binary, Since you 
        have successfully installed aah CLI binary distribution.
    EOS
    end

    test do
        #system "#{bin}/aah -v"
        assert_match "cli v#{version}", shell_output("#{bin}/aah -v")
    end
end
