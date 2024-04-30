class SqlAlerts < Formula
  desc "Get notifications about new rows in your database"
  homepage "https://github.com/yendefrr/sql-alerts"
  url "https://github.com/yendefrr/sql-alerts.git",
    tag: "v0.4.7",
    revision: "bbebbcc10c404062fe8407593fe3b5846d3b4a9e"
  sha256 "430e2c8a1a5da29c0f2543e5047ccc5e069214d43bdd9b2b8364af71be0f8aea"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args(output: bin/"sqlal"), "./main.go"
  end

  test do
    # Add test code here if applicable
    system "#{bin}/sqlal", "--version"
  end
end
