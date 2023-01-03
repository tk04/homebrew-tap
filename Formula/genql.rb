class Genql < Formula
  desc "Type-safe Prisma & GraphQL Generator for the Node.js Ecosystem"
  homepage "https://github.com/tk04/genql"
  license "MIT"
  version "v1.0.0"

  if OS.mac?
    if Hardware::CPU.arm? || Hardware::CPU.in_rosetta2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-arm64.zip"
      sha256 "b308a1bdf4abf96a78b43feab4fb529804804802231d8706ef07133deb4f51c9"
    elsif Hardware::CPU.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-amd64.zip"
      sha256 "10c49f873f37eb7fbc40230320eebaa77d5fbb6c227c613e5e75262542575a43" 
  elsif os.linux?
    if hardware::cpu.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-linux-amd64.zip"
      sha256 "889237a3337f13ed8d7b0f280bf53317aca63c2632be0667ce649d939b0cfda5" 
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "genql"
  end
end

