#!/bin/bash
set -e

cd ~/Git_Projects/dita-documentation-samples

echo "Building HTML5 output..."
dita --input=git-primer-sample.ditamap --format=html5 --output=out/topic-html5

echo "Building PDF output..."
dita --input=git-primer-sample.ditamap --format=pdf --output=out/topic-pdf

echo "Build complete."
