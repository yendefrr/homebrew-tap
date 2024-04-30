
class SqlAlerts < Formula
  desc "Get notifications about new rows in your database"
  homepage "https://github.com/yendefrr/sql-alerts"
  url "https://github.com/yendefrr/sql-alerts/archive/v0.4.7.tar.gz"
  sha256 "d1a835fc4f1170d6f48da0b6d7ccbc4e0aa08973d05f488568c7b17a43e275a6"

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
