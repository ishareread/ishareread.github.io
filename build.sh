#!/bin/bash
set -e

echo "Static files already built, no build needed."
echo "Serving from public/"
ls -la public/ | head -10
