#!/usr/bin/env bash
URL="https://dist.libuv.org/dist/v1.51.0/libuv-v1.51.0-dist.tar.gz"
ZIP="${URL##*/}"
DIR="${ZIP%-dist.tar.gz}"
DIR="${DIR/-v/-}"
echo "$DIR"
mkdir -p .build
cd .build

# Download the release
if [ ! -f "$ZIP" ]; then
  echo "Downloading $ZIP from $URL ..."
  curl -L "$URL" -o "$ZIP"
  echo ""
fi

# Unzip the release
if [ ! -d "$DIR" ]; then
  echo "Unzipping $ZIP to .build/$DIR ..."
  tar -xzf "$ZIP"
  echo ""
fi

# Copy the libs to the package directory
echo "Copying libs to uv/ ..."
rm -rf ../uv
mkdir -p ../uv
cp -rf "$DIR/include"/* ../
echo ""
