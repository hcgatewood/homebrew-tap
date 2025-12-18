class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.3.0.tar.gz"
    sha256 "2761f6755541d4c95d84d2e2d0ea7571185cc00ab34ac2eb0a77c611962bd45f"

    depends_on "fx"
    depends_on "fzf"
    depends_on "jaq"
    depends_on "jd"
    depends_on "jq"
    depends_on "hcgatewood/tap/jsondiffpatch"

    def install
        bin.install "jdd"
    end

    test do
        assert_match "Usage: jdd", shell_output("#{bin}/jdd --help")
    end
end
