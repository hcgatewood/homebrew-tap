class Jdd < Formula
    desc "Navigate successive versions of a JSON object"
    homepage "https://github.com/hcgatewood/jdd"
    url "https://github.com/hcgatewood/jdd/archive/refs/tags/v0.12.0.tar.gz"
    sha256 "90eb76e4b132ab9713879df856429f2de229ff83e5ab03905b320f36495f8000"

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
