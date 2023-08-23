#!/bin/bash

# 检查是否提供了 commit 备注内容
if [ $# -eq 0 ]; then
    echo "Usage: $0 <commit_message>"
    exit 1
fi

# 添加所有文件到暂存区
git add .

# 提交并推送代码，使用传入的 commit 备注内容
git commit -m "$1"
git push origin main