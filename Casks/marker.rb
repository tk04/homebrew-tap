cask "marker" do
  arch arm: "aarch64", intel: "x64"
  version "1.0.1"
  sha256 :no_check

  url "https://github.com/tk04/Marker/releases/download/master/Marker_#{version}_#{arch}.dmg",
      verified: "github.com/tk04/Marker/"
  name "Marker"
  desc "Desktop App for Easily Viewing and Editing Markdown Files"
  homepage "https://marker.pages.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: ">= :high_sierra"

  app "Marker.app"

  postflight do
    system_command "xattr", args: ["-c", "/Applications/Marker.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.marker.app",
  ]
end
