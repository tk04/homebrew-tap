class Genql < Formula
  desc "Type-safe Prisma & GraphQL Generator for the Node.js Ecosystem"
  homepage "https://github.com/tk04/genql"
  license "MIT"
  version "v1.0.0"

  if OS.mac?
    if Hardware::CPU.arm? || Hardware::CPU.in_rosetta2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-arm64.zip"
      sha256 "3eea89213bb325e0f3d4833f500b5ab250746e70b20732107f7284117bd8e427"
    elsif Hardware::CPU.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-amd64.zip"
      sha256 "f420f1347e0249805b8121f0cc3f56042844fc4accd51ad1e77a6e9e26c759f0" 
    end
  elsif os.linux?
    if hardware::cpu.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-linux-amd64.zip"
      sha256 "dded5fb1033d249552ea4949b1e0b990cb279cc9f2f4ecc49ff2bd67d4863fc8" 
    end
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "genql"
  end
end

