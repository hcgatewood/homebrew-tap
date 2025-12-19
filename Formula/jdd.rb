class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.5.0.tar.gz"
    sha256 "3e310dc010fa63c77e9ca432534daf7f6fc9d4645ed452c1a0abe0d22a135769"

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
