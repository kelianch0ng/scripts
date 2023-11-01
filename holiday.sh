#!/bin/bash

# 获取当前日期
current_date=$(TZ=':Asia/Shanghai' date '+%Y-%m-%d')

# 构建 URL
url="https://timor.tech/api/holiday/info/$current_date"

# 发送 GET 请求
curl "$url" \
  -H 'authority: timor.tech' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
  --compressed
