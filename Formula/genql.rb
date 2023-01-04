class Genql < Formula
  desc "Type-safe Prisma & GraphQL Generator for the Node.js Ecosystem"
  homepage "https://github.com/tk04/genql"
  license "MIT"
  version "v1.0.0"

  if OS.mac?
    if Hardware::CPU.arm? || Hardware::CPU.in_rosetta2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-arm64.zip"
      sha256 "5af601fca442fe23896e329d5dae07506feca6fa3f7bd0faf6cb3dde6676bf73"
    elsif Hardware::CPU.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-amd64.zip"
      sha256 "8847329f0cf039ac496f2ec0629ac9d59f00c7e46ab6ae2c5e0baf9ae5fd4049" 
    end
  elsif os.linux?
    if hardware::cpu.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-linux-amd64.zip"
      sha256 "d0573eea6aed6f59e48ee2425008c02038836ff6b9a13ce696a94cbb80ca70bf" 
    end
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "genql"
  end
end

