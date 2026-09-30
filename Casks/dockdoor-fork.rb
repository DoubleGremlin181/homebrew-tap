cask "dockdoor-fork" do
  version :latest
  sha256 :no_check

  url "https://github.com/DoubleGremlin181/DockDoor/releases/latest/download/DockDoor.dmg"
  name "DockDoor (Space Switcher fork)"
  desc "Dock window previews, window switcher and Space Switcher"
  homepage "https://github.com/DoubleGremlin181/DockDoor"

  conflicts_with cask: "dockdoor"
  depends_on macos: :ventura

  app "DockDoor.app"

  # The build is signed but not notarized, so Gatekeeper would block its first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/DockDoor.app"], must_succeed: false
  end

  zap trash: [
    "~/Library/Caches/io.github.doublegremlin181.DockDoor",
    "~/Library/HTTPStorages/io.github.doublegremlin181.DockDoor",
    "~/Library/Preferences/io.github.doublegremlin181.DockDoor.plist",
  ]
end
