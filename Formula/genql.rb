class Genql < Formula
  desc "Type-safe Prisma & GraphQL Generator for the Node.js Ecosystem"
  homepage "https://github.com/tk04/genql"
  license "MIT"
  version "v1.0.0"

  if OS.mac?
    if Hardware::CPU.arm? || Hardware::CPU.in_rosetta2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-arm64.zip"
      sha256 "a67718ef5582df4b05dbea5d40405f9818165b40ca99c164df1a3c51804eb800"
    elsif Hardware::CPU.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-darwin-amd64.zip"
      sha256 "6a7a97cf9c5c677318c01ea38df7d3f392b19e1672de2c947e19a6b37fd02a5f" 
    end
  elsif os.linux?
    if hardware::cpu.avx2?
      url "https://github.com/tk04/genql/releases/download/#{version}/genql-linux-amd64.zip"
      sha256 "61eeb01ce4b5a060ca28db76bbbd7291d79ee280641d4dadb9d2f753b45c0585" 
    end
  else
    odie "Unsupported platform"
  end

  def install
    bin.install "genql"
  end
end

