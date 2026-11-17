cask "mic-control" do
  version "1.3.0"
  sha256 "eaed556f19ea8450bd6e36c8eade36c205e4869c51c18f62da8b23dfef49a6c7"

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

  caveats <<~EOS
    Mic Control is not signed or notarized by Apple yet, so macOS may say it
    "is damaged and can't be opened". Clear the quarantine flag once:

      xattr -dr com.apple.quarantine "#{appdir}/DJI Mic Control.app"

    Then connect the receiver with a USB-C cable and open the app.
    Setup guide: https://miccontrol.app/en/dji-mic-3-mac/?ref=homebrew
  EOS
end
