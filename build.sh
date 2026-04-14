#!/bin/bash
set -e

# 下载 Hugo 标准版（静态编译，不依赖 glibc）
HUGO_VERSION="0.160.1"
if [ ! -f /tmp/hugo ]; then
    wget -qO /tmp/hugo.tar.gz "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-amd64.tar.gz"
    tar -xzf /tmp/hugo.tar.gz -C /tmp
fi

# 构建
/tmp/hugo --minify --baseURL "https://www.ishareread.com/"

echo "Build complete. Output in public/"
ls -la public/ | head -10
