class Aah < Formula
    desc "aah framework CLI, a developer assistant"
    homepage "https://aahframework.org"
    url "https://dl.aahframework.org/releases/cli/0.11.0-edge/aah_darwin_amd64.zip"
    sha256 "e834649c60abe060e3ce82f1831e1c7fe156bcd61d5709d877af5aca3f944edf"
    version "0.11.0-edge"

    def install
        bin.install "aah"
    end

    test do
        system "#{bin}/aah -v"
    end
end
