# homebrew-bura

Tap for Bura.

    brew install --cask lknezevicc/bura/bura

Bura is not notarized by Apple. The cask removes the quarantine flag after install. If macOS still blocks the
first launch, open System Settings > Privacy & Security and choose "Open Anyway", or run:

    xattr -dr com.apple.quarantine /Applications/Bura.app
