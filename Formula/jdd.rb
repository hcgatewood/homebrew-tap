class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.6.0.tar.gz"
    sha256 "090f46f1f8864b8215cc1c64beb44d4c10ba97dc9f94a5334e0c35b1d67c3165"

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
