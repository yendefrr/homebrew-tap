# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SqlAlerts < Formula
  desc "Get notifications about new rows in your database"
  homepage "https://github.com/yendefrr/sql-alerts"
  version "1.6.2"

  depends_on "go"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yendefrr/sql-alerts/releases/download/1.6.2/sql-alerts_Darwin_x86_64.tar.gz"
      sha256 "72570ddf6ede7d71b9987b9056e4cc53c8fc7f254e955e71071ce3cc0b72edc5"

      def install
        bin.install "sql-alerts" => "sqlal"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yendefrr/sql-alerts/releases/download/1.6.2/sql-alerts_Darwin_arm64.tar.gz"
      sha256 "481ab8379767719d4aebfa9ae737c016abab29852a502935326ff090894c3139"

      def install
        bin.install "sql-alerts" => "sqlal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yendefrr/sql-alerts/releases/download/1.6.2/sql-alerts_Linux_x86_64.tar.gz"
      sha256 "1c74cb26f16e9867071388be7d7e2f822fcbbe02dabc8c9b14c7e4fb2d38c8a1"

      def install
        bin.install "sql-alerts" => "sqlal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yendefrr/sql-alerts/releases/download/1.6.2/sql-alerts_Linux_arm64.tar.gz"
      sha256 "07ca57327cf571349d280c0d05c6e6853ffade00abe2f9911c15bd24cd696d1f"

      def install
        bin.install "sql-alerts" => "sqlal"
      end
    end
  end
end
