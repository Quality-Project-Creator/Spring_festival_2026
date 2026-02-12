#!/bin/bash
# Git 同步脚本 - 自动提交并推送到 GitHub

set -e

PROJECT_DIR="${COZE_WORKSPACE_PATH}/Spring_festival_2026"
cd "$PROJECT_DIR"

echo "🔄 开始 Git 同步流程..."

# 检查是否有更改
if git diff --quiet && git diff --cached --quiet; then
    echo "✅ 没有需要提交的更改"
    exit 0
fi

# 添加所有更改
echo "📝 添加所有更改..."
git add .

# 提交更改
COMMIT_MSG="${1:-自动更新: 由 Coze Assistant 编辑}"
echo "💾 提交更改: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

# 推送到 GitHub
echo "🚀 推送到 GitHub..."
git push origin master

echo "✅ 同步完成！"
