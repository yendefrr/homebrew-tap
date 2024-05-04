# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SqlAlerts < Formula
  desc "Get notifications about new rows in your database"
  homepage "https://github.com/yendefrr/sql-alerts"
  version "1.2.2"

  depends_on "go"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yendefrr/sql-alerts/releases/download/1.2.2/sql-alerts_Darwin_x86_64.tar.gz"
      sha256 "dda9e0ee0ef250bea3bbf82a330364d93e472c9e2ff224dc9cb6dde114e8fb76"

      def install
        ENV["CGO_ENABLED"] = "0"
        system "go", "build", *std_go_args(output: bin/"sqlal"), "./cmd/sqlal"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yendefrr/sql-alerts/releases/download/1.2.2/sql-alerts_Darwin_arm64.tar.gz"
      sha256 "1cd168aab1578fc0f9315f73f7fc01ef7654523a2cfee073da9c0a88fab1b2e5"

      def install
        ENV["CGO_ENABLED"] = "0"
        system "go", "build", *std_go_args(output: bin/"sqlal"), "./cmd/sqlal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yendefrr/sql-alerts/releases/download/1.2.2/sql-alerts_Linux_x86_64.tar.gz"
      sha256 "46b6cac4461f6999dc84f25bf03b3461b9c28ba879ff8e666112a6ffab3e054d"

      def install
        ENV["CGO_ENABLED"] = "0"
        system "go", "build", *std_go_args(output: bin/"sqlal"), "./cmd/sqlal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yendefrr/sql-alerts/releases/download/1.2.2/sql-alerts_Linux_arm64.tar.gz"
      sha256 "aa0df1af9de28e9a105a81107c0fc4870efb295a9dec976545d6e9df815e7f1b"

      def install
        ENV["CGO_ENABLED"] = "0"
        system "go", "build", *std_go_args(output: bin/"sqlal"), "./cmd/sqlal"
      end
    end
  end
end
