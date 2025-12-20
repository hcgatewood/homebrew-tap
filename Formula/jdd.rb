class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.11.0.tar.gz"
    sha256 "30ccc1997feedfbd07e025c9e384d5bc386811e6633c1da1dc69ba291110dbb8"

    depends_on "fswatch"
    depends_on "fx"
    depends_on "fzf"
    depends_on "jaq"
    depends_on "jq"
    depends_on "hcgatewood/tap/jsondiffpatch"

    def install
        bin.install "jdd"
    end

    test do
        assert_match "Usage: jdd", shell_output("#{bin}/jdd --help")
    end
end
