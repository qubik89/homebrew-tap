cask "mic-control" do
  version "1.6.0"
  sha256 "7268429300924ecbc943b8a9e608db5e0b811db1abb3279e752f46e8a8b34de9"

  url "https://github.com/qubik89/DJIMic3/releases/download/v#{version}/DJI-Mic-Control_macOS_arm64.dmg"
  name "Mic Control"
  name "DJI Mic Control"
  desc "Control DJI wireless microphones from the computer over USB"
  homepage "https://miccontrol.app/en/?ref=homebrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "DJI Mic Control.app"

  zap trash: [
    "~/Library/Application Support/org.djimic.control",
    "~/Library/Caches/org.djimic.control",
    "~/Library/LaunchAgents/DJI Mic Control.plist",
    "~/Library/Saved Application State/org.djimic.control.savedState",
    "~/Library/WebKit/djimic-gui",
    "~/Library/WebKit/org.djimic.control",
  ]
end
