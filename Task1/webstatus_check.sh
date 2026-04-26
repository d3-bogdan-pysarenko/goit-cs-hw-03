#!/bin/bash

# Список вебсайтів
websites=(
  "https://google.com"
  "https://facebook.com"
  "https://twitter.com"
  "https://nononon.netisko"
)

# Файл логів
log_file="website_status.log"
> "$log_file"

# Перевірка доступності та запис результатів
for website in "${websites[@]}"; do
  status_code=$(curl -sLo /dev/null -w "%{http_code}" "$website")

  if [ "$status_code" -eq 200 ]; then
    status="UP"
  else
    status="DOWN"
  fi

  echo "$(date +"%d.%m.%Y %H:%M:%S") [$website] is $status" >> "$log_file"
  echo "$(date +"%d.%m.%Y %H:%M:%S") [$website] is $status"
done

# Повідомлення про результат
echo "Результати записано у файл: $log_file"