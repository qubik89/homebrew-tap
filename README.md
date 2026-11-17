# qubik89/homebrew-tap

Homebrew casks for [Mic Control](https://miccontrol.app/en/?ref=homebrew-tap),
the free, open-source app that controls DJI wireless microphones (DJI Mic 3,
Mic Mini) from the computer over USB. Source:
[qubik89/DJIMic3](https://github.com/qubik89/DJIMic3).

## Install

```bash
brew install --cask qubik89/tap/mic-control
```

The app is for Apple Silicon Macs. It isn't signed or notarized by Apple yet,
so macOS may say it "is damaged and can't be opened". Clear the quarantine
flag once after installing:

```bash
xattr -dr com.apple.quarantine "/Applications/DJI Mic Control.app"
```

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

When the macOS release is signed and notarized, remove the `caveats` block.

Not affiliated with or endorsed by DJI.
