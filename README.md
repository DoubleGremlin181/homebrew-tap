# DoubleGremlin181's Homebrew tap

## DockDoor (Space Switcher fork)

[DockDoor](https://github.com/DoubleGremlin181/DockDoor/tree/space-switcher) with a Space Switcher added on top of upstream [ejbills/DockDoor](https://github.com/ejbills/DockDoor).

```sh
brew install --cask doublegremlin181/tap/dockdoor-fork
```

The build is signed but not notarized. The cask clears macOS's quarantine flag on install, so DockDoor opens without the "Apple could not verify" warning. After that, DockDoor updates itself.

It can't be installed alongside the upstream `dockdoor` cask.
