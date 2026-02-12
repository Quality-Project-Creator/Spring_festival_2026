# Git 同步工作流程指南

## 概述
此工作流程允许在本地编辑代码后，自动同步到 GitHub 远程仓库。

## 当前配置

- **远程仓库**: `https://github.com/Quality-Project-Creator/Spring_festival_2026.git`
- **本地路径**: `${COZE_WORKSPACE_PATH}/Spring_festival_2026`
- **当前分支**: master
- **认证方式**: Personal Access Token (已配置)

## Git 同步命令

### 方法一：使用自动化脚本（推荐）
```bash
# 同步所有更改（自动提交）
cd ${COZE_WORKSPACE_PATH}/Spring_festival_2026
./git-sync.sh

# 自定义提交信息
./git-sync.sh "添加了新功能"
```

### 方法二：手动执行
```bash
cd ${COZE_WORKSPACE_PATH}/Spring_festival_2026

# 查看更改
git status

# 添加所有更改
git add .

# 提交更改
git commit -m "描述你的更改"

# 推送到 GitHub
git push origin master
```

### 方法三：从 GitHub 拉取最新更改
```bash
cd ${COZE_WORKSPACE_PATH}/Spring_festival_2026

# 拉取最新更改
git pull origin master
```

## 工作流程

1. **编辑代码**: 在本地修改任何文件
2. **查看更改**: `git status` 查看哪些文件被修改
3. **添加更改**: `git add .` 添加所有更改到暂存区
4. **提交更改**: `git commit -m "提交信息"` 提交更改
5. **推送到 GitHub**: `git push origin master` 同步到远程仓库

## 快捷命令列表

| 操作 | 命令 |
|------|------|
| 查看状态 | `git status` |
| 查看更改详情 | `git diff` |
| 添加所有更改 | `git add .` |
| 提交更改 | `git commit -m "信息"` |
| 推送到 GitHub | `git push origin master` |
| 从 GitHub 拉取 | `git pull origin master` |
| 查看提交历史 | `git log --oneline` |
| 自动同步 | `./git-sync.sh` |

## 注意事项

1. **推送前拉取**: 在推送前建议先执行 `git pull` 确保本地是最新的
2. **冲突解决**: 如果遇到合并冲突，需要手动解决后再推送
3. **提交信息**: 使用清晰的提交信息，便于追溯更改历史
4. **敏感信息**: 不要提交敏感信息（密码、密钥等）

## 自动化工作流程示例

编辑文件后，执行以下命令即可同步：
```bash
cd ${COZE_WORKSPACE_PATH}/Spring_festival_2026
./git-sync.sh "更新了首页样式"
```

## 项目预览

项目当前运行在: `http://localhost:5000`

如需重启预览服务器:
```bash
# 停止当前服务器
pkill -f "python3 -m http.server 5000"

# 重新启动
cd ${COZE_WORKSPACE_PATH}/Spring_festival_2026
python3 -m http.server 5000 > /app/work/logs/bypass/app.log 2>&1 &
```
