# qubik89/homebrew-tap

Homebrew casks for [Mic Control](https://miccontrol.app/en/?ref=homebrew-tap),
the free, open-source app that controls DJI wireless microphones (DJI Mic 3,
Mic Mini) from the computer over USB. Source:
[qubik89/DJIMic3](https://github.com/qubik89/DJIMic3).

## Install

```bash
brew install --cask qubik89/tap/mic-control
```

For Apple Silicon Macs. Since 1.4.0 the app is signed with a Developer ID and
notarized by Apple, so it opens normally. Connect the receiver with a USB-C
cable and open **DJI Mic Control**. Setup guide:
[miccontrol.app/en/dji-mic-3-mac/](https://miccontrol.app/en/dji-mic-3-mac/?ref=homebrew-tap).

## Update and remove

```bash
brew upgrade --cask mic-control
brew uninstall --cask mic-control
brew uninstall --zap --cask mic-control   # also removes settings and caches
```

## Maintenance

`version` and `sha256` in `Casks/mic-control.rb` are updated from the app
repository: by the release workflow after each release (when the
`HOMEBREW_TAP_TOKEN` secret is set), or by hand with
`./build-release.sh --update-cask <dmg> <path to this checkout>`.

Not affiliated with or endorsed by DJI.
