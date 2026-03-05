#!/bin/bash
# Безпечне очищення кешу системи та користувача

# 1. Синхронізуємо всі дані на диск
sudo sync

# 2. Очищаємо кеш пам'яті (pagecache + dentries + inodes)
sudo sync && sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'

