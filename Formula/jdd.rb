class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.13.0.tar.gz"
    sha256 "495ab56195db24951469d452e6f51ae5627fddff97bc066007247ae832918d1a"

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
