#!/usr/bin/env bash
# 部署脚本 - 占位实现
# 请根据您的实际部署目标修改此脚本
#
# 常见部署目标:
# 1. GitHub Pages:   见 deploy.yml 的 "pages" 步骤（已内置示例，可删除本文件）
# 2. CloudStudio:    用 wabaoyi/cnb-cli 工具上传
# 3. 阿里云OSS:      ossutil cp
# 4. 自有服务器:    rsync / scp

set -e
echo "==== 部署（占位脚本）===="
echo "当前时间: $(date)"
echo "部署目标: 请在 .github/scripts/deploy.sh 中配置"
echo ""
echo "默认情况下, GitHub Actions 会自动把改动的文件 commit 回仓库"
echo "如果需要部署到外部服务, 请在此处添加部署命令"
echo ""
echo "完成（占位）"
