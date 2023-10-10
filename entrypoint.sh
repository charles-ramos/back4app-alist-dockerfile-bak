#!/bin/bash

# 安装 Git
apt-get update
apt-get install -y git

# 设置 SSH 配置，避免交互提示
export GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

mkdir -p ~/.ssh

# 保存私钥到文件
cat > ~/.ssh/id_rsa <<-EOF
-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----
EOF

chmod 600 ~/.ssh/id_rsa

# 设置 Git 用户名和邮箱
git config --global user.email "jinyue8415@gmail.com"
git config --global user.name "JinYue-GitHub"

# 克隆仓库
git clone git@github.com:JinYue-GitHub/test.git

# 进入仓库目录
cd test

# 创建测试文件 woshitest.txt
echo "我是测试" >> woshitest.txt

# 添加文件到 Git
git add woshitest.txt

# 提交文件
git commit -m "添加测试文件 woshitest.txt"

# 推送到远程仓库
git push origin main

cd ..

# 挂载云盘
rclone --config rclone.conf mount ondrive:/data data --copy-links --no-gzip-encoding --no-check-certificate --allow-other --allow-non-empty --umask 000 --vfs-cache-mode full > /dev/null 2>&1 &

# 等待 config.json 文件的出现
while [ ! -f data/config.json ]; do
    sleep 10
    echo "woshi10s" >> data/woshi10s.txt || echo "woshi10s" > data/woshi10s.txt
done
echo "ssssssssssdfdfdss s" > data/hello.txt
# 执行 alist
./alist server --data data
