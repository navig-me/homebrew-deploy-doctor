class DeployDoctor < Formula
  desc "Diagnose container deploy readiness"
  homepage "https://github.com/navig-me/deploy-doctor"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/navig-me/deploy-doctor/releases/download/v0.1.0/deploy-doctor_0.1.0_darwin_arm64.tar.gz"
      sha256 "446244f63fd52bf641555301ff1e0215d3ae3e31ed502ada223b9e40a292387c"
    else
      url "https://github.com/navig-me/deploy-doctor/releases/download/v0.1.0/deploy-doctor_0.1.0_darwin_amd64.tar.gz"
      sha256 "db092814e925f6c2dacffeb1f51be771e7739ba90020a92d36fe30f0e357ce3a"
    end
  end

  def install
    bin.install "deploy-doctor"
  end
end
