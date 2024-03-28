cask "marker" do
  arch arm: "aarch64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://github.com/tk04/Marker/releases/download/master/latest.json",
      verified: "github.com/tk04/Marker/" do |release_data|
    data = JSON.parse(release_data)
    data["platforms"]["darwin-#{arch}"]["url"]
  end
  name "Marker"
  desc "Desktop App for Easily Viewing and Editing Markdown Files"
  homepage "https://marker.pages.dev/"

  livecheck do
    url "https://github.com/tk04/Marker/releases/download/master/latest.json"
    strategy :page_match do |res|
      data = JSON.parse(res)
      data["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Marker.app"

  postflight do
    system_command "xattr", args: ["-c", "/Applications/Marker.app"]
  end

  zap trash: "~/Library/Application Support/com.marker.app"
end
