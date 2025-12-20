class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.9.0.tar.gz"
    sha256 "65d49dafc1fff895f5b536cdebc56092362dee2bd40d89b22cd570cd91dfcb99"

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
