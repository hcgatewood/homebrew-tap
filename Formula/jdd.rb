class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.4.0.tar.gz"
    sha256 "fb8eabb4ed043a51c841b8351246b11fd550a2be8264299ed5df4f85c487992d"

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
