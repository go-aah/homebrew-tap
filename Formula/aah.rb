class Aah < Formula
    desc "aah framework CLI, a developer assistant"
    homepage "https://aahframework.org"
    url "https://dl.aahframework.org/releases/cli/0.11.0-edge/aah_darwin_amd64.zip"
    sha256 "addee299692f112500d68b7c179f15cb7895a76cd824670d8052295c6200f41c"
    version "0.11.0-edge"

    def install
        bin.install "aah"
    end

    test do
        system "#{bin}/aah -v"
    end
end
