class Genql < Formula
  desc "Type-safe Prisma & GraphQL Generator for the Node.js Ecosystem"
  homepage "https://github.com/tk04/genql"
  license "MIT"
  version "v1.0.0"

  if OS.mac?
    if Hardware::CPU.arm? || Hardware::CPU.in_rosetta2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-arm64.zip"
      sha256 "9fa682b2a30d556d1201c78bbbaee89870185da1b6c3914c9980296fe98b65a7"
    elsif Hardware::CPU.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-amd64.zip"
      sha256 "b9266a18a5e7e28534a3407e34f0b0bd31bf7de32840ef7263e308596a97fb6b" 
    end
  elsif os.linux?
    if hardware::cpu.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-linux-amd64.zip"
      sha256 "b6f2fd06d0cae630883c9d45a33733147893c7ed87625f94adf4acdaa0308464" 
    end
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "genql"
  end
end

