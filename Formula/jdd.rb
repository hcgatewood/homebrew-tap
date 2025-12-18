class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "d77f2b5d8e4331abac59570473ed26f7ae8cff957df5bb284e8f2973ca1aa43e"

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
