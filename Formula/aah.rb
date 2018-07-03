class Aah < Formula
    desc "aah framework CLI, a developer assistant"
    homepage "https://aahframework.org"
    url "https://dl.aahframework.org/releases/cli/0.11.0-edge/aah_darwin_amd64.zip"
    sha256 "2e8c5354e4e42d2e61a12925777e3742b0bf0b9f47495dd7897e7596267ea562"
    version "0.11.0-edge"

    def install
        bin.install "aah"
    end

    test do
        system "#{bin}/aah -v"
    end
end
