#!/bin/bash

# 切换到包含脚本的目录
cd /root/scripts
# 获取当前日期
current_date=$(TZ=':Asia/Shanghai' date '+%Y-%m-%d')

# 构建 URL
url="https://timor.tech/api/holiday/info/$current_date"
# 发送 GET 请求并将结果保存到文件

response=$(curl -s --max-time 60 "$url" \
  -H 'authority: timor.tech' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  --compressed)
echo "$response"

# 将结果保存到文件
echo "$response" > holiday.txt

# 添加、提交和推送到 GitHub 存储库
git add holiday.txt
git commit -m "Add holiday for $current_date"
git push origin main

