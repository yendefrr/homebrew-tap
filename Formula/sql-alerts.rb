
class SqlAlerts < Formula
  desc "Get notifications about new rows in your database"
  homepage "https://github.com/yendefrr/sql-alerts"
  url "https://github.com/yendefrr/sql-alerts/archive/v0.4.3.tar.gz"
  sha256 "a6aba0e169fb495ab8f1f8d01f85bbd8f20284ab9f1d1f3adc1e9db354f0acdf"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args
  end

  test do
    # Add test code here if applicable
    system "#{bin}/sql-alerts", "--version"
  end
end
